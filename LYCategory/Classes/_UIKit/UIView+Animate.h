//
//  UIView+Animate.h
//  LYCategory
//
//  Created by Luo Yu on 2015-01-01.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2015 骆昱(Luo Yu). All rights reserved.
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

typedef enum {
	AnimateViewPositionTop = 1,
	AnimateViewPositionRight = 2,
	AnimateViewPositionBottom = 3,
	AnimateViewPositionLeft = 4,
} AnimateViewPosition;

@interface UIView (Animate)

/**
 animation method move view from specified postion of screen

 @param postion postion enum value
 */
- (void)showFromScreen:(AnimateViewPosition)postion;

/// move view to point and scale view with animation
/// @param pt target point
/// @param scale scale
- (void)animateTo:(CGPoint)pt scale:(CGFloat)scale;

/// move view to point and scale view with spring animation
/// @param pt target point
/// @param scale scale
- (void)springTo:(CGPoint)pt scale:(CGFloat)scale;

@end
