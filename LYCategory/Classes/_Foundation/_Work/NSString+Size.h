//
//  NSString+Size.h
//  LYCategory
//
//  Created by Luo Yu on 3/23/14.
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

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@interface NSString (Size)

/**
 Calculate width of string with specified font.

 @param font font
 @return width
 */
- (CGFloat)widthWithFont:(UIFont *)font;

/**
 Calculate width of string using font (system default) family with custom font size.

 @param fontSize font size
 @return width
 */
- (CGFloat)widthWithSystemFontOfSize:(CGFloat)fontSize;

- (CGFloat)heightWithFont:(UIFont *)font andFixedWidth:(CGFloat)width;

- (CGFloat)heightWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpace andFixedWidth:(CGFloat)width;

@end


// MARK: - NSAttributedString (Size)
@interface NSAttributedString (Size)

- (CGFloat)heightWithFixedWidth:(CGFloat)width;

@end
