//
//  UIColor+Speed.h
//  LYCategory
//
//  CREATED BY LUO YU ON 26/10/2016.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2016 骆昱(Luo Yu). All rights reserved.
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

#import <UIKit/UIKit.h>

@interface UIColor (Speed)

/**
 generate color object with red-green-blue values

 @param redValue red color value, 0~255
 @param greenValue green color value, 0~255
 @param blueValue blue color value, 0~255
 @return color object
 */
+ (UIColor *)colorWithR:(CGFloat)redValue G:(CGFloat)greenValue B:(CGFloat)blueValue;


/**
 generate color object with hex value string

 @param hexstring hex string with #
 @param alpha alpha value 0-1
 @return color object
 */
+ (UIColor *)colorWithHex:(NSString *)hexstring andAlpha:(CGFloat)alpha;

@end
