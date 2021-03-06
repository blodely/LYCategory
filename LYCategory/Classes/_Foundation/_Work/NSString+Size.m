//
//  NSString+Size.m
//  LYCATEGORY
//
//  CREATED BY LUO YU ON 3/23/14.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2014 骆昱(Luo Yu). All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy of
//	this software and associated documentation files (the "Software"), to deal in
//	the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//	the Software, and to permit persons to whom the Software is furnished to do so,
//	subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGFloat)widthWithFont:(UIFont *)font {
	UIFont *opfont;
	if (font == nil || [font isKindOfClass:[UIFont class]] == NO) {
		opfont = [UIFont systemFontOfSize:14];
	} else {
		opfont = font;
	}
	return ceilf([[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:opfont,}].size.width);
}

- (CGFloat)widthWithSystemFontOfSize:(CGFloat)fontSize {
	return ceilf([[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize],}].size.width);
}

- (CGFloat)heightWithFont:(UIFont *)font andFixedWidth:(CGFloat)width {
		
	return ceil([[[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font,}] boundingRectWithSize:(CGSize){width, CGFLOAT_MAX} options:NSStringDrawingUsesLineFragmentOrigin context:nil].size.height);
	
}

- (CGFloat)heightWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpace andFixedWidth:(CGFloat)width {
	CGFloat textHeight = [self heightWithFont:font andFixedWidth:width];
	CGFloat oneLineTextHeight = [@" " heightWithFont:font andFixedWidth:200];
	NSInteger numberOfLines = textHeight / oneLineTextHeight;
	numberOfLines = MAX(numberOfLines - 1, 0);
	
	return textHeight + numberOfLines * MAX(lineSpace, 0);
}

@end


// MARK: - NSAttributedString (Size)
@implementation NSAttributedString (Size)

- (CGFloat)heightWithFixedWidth:(CGFloat)width {
	CGFloat height = 0;
	
	{
		UILabel *workinglabel = [[UILabel alloc] initWithFrame:(CGRect){0, 0, width, CGFLOAT_MAX}];
		workinglabel.attributedText = self;
		workinglabel.numberOfLines = 0;
		[workinglabel sizeToFit];
		
		height = workinglabel.frame.size.height;
	}
	
	return (CGFloat)ceil(height);
}

@end
