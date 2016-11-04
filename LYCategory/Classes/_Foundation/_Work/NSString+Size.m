//
//  NSString+Size.m
//  LYCATEGORY
//
//  CREATED BY LUO YU ON 3/23/14.
//  COPYRIGHT (C) 2014 LUO YU. ALL RIGHTS RESERVED.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGFloat)widthWithFont:(UIFont *)font {
	return ceilf([[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font,}].size.width);
}

- (CGFloat)widthWithSystemFontOfSize:(CGFloat)fontSize {
	return ceilf([[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize],}].size.width);
}

- (CGFloat)heightWithFont:(UIFont *)font andFixedWidth:(CGFloat)width {
		
	return ceil([[[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font,}] boundingRectWithSize:(CGSize){width, CGFLOAT_MAX} options:NSStringDrawingUsesLineFragmentOrigin context:nil].size.height);
	
}

@end
