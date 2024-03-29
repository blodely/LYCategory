//
//  UIImage+Speed.h
//  LYCategory
//
//  Created by Luo Yu on 2018/9/11.
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


@interface UIImage (Speed)

/// get color object from specified pixel of an image
/// @param point pixel
- (UIColor *)colorAtPixel:(CGPoint)point;

/**
 Similar to -imageNamed: to create a UIImage object with resource name.
 But it will always rendered as original.

 @param imageName image resource name
 @return UIImage object
 */
+ (instancetype)originalNamed:(NSString *)imageName;

/// Create a UIImage object with resource name in bunble, and set it's render mode original.
/// @param imageName image resource name
/// @param bundle bundle object
+ (instancetype)originalNamed:(NSString *)imageName inBundle:(NSBundle *)bundle;

/**
 Create a UIImage object with resource name, and it will rendered as template,
 with color by view's tint color.

 @param imageName image resource name
 @return UIImage object
 */
+ (instancetype)templateNamed:(NSString *)imageName;

/**
 Create a UIImage object with resource name, and it will rendered as template,
 with color by view's tint color.
 
 @param imageName image resource name
 @param bundle resource in bundle
 */
+ (instancetype)templateNamed:(NSString *)imageName inBundle:(NSBundle *)bundle;

@end
