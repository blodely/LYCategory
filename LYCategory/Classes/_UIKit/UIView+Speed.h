//
//  UIView+Speed.h
//  LYCategory
//
//  Created by Luo Yu on 2018/7/2.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2018 骆昱(Luo Yu). All rights reserved.
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

@interface UIView (Speed)

/**
 Add rounded corner to view.

 @param radius corner radius
 */
- (void)roundedCornerRadius:(CGFloat)radius;

/**
 Add border to view.

 @param width border width
 @param color border color
 */
- (void)borderWithWidth:(CGFloat)width andColor:(UIColor *)color;

/**
 Add a exactly one pixel border with tint color as border color to view.
 */
- (void)border1Px;

/**
 Add a one pixel stroke to all subviews.
 */
- (void)strokeSubviews;

/**
 Remove view's border.
 */
- (void)removeBorder;

/**
 NOT FINISHED METHOD!!!

 @param radius corner radius
 @param opacity shadow opacity
 */
- (void)shadowWithRadius:(CGFloat)radius opacity:(CGFloat)opacity;

// MARK: - USER INTERACTION

/// Disable view's interaction for speicified time duration
/// @param second seconds
- (void)pauseUserInteractionFor:(float)second;

/// Disable view's interaction for one second
- (void)pauseUserInteractionForASecond;

- (void)reenableUserInteraction;

// MARK: - SUBVIEW OPS

/**
 Remove view's all subviews
 */
- (void)removeAllSubviews;

/**
 Remove one kind of subviews from view.

 @param className sub view's class name.
 */
- (void)removeAllSubviewsWithClassNamed:(NSString *)className;

// MARK: - CONSTRAINT

- (void)makeEdgeEqualTo:(UIView *)anotherView insets:(UIEdgeInsets)inset;

- (void)makeEdgeEqualTo:(UIView *)anotherView;

- (void)makeEdgeEqualToSuperView;

/// remove all constraints with self
- (void)removeAllConstraints;

@end
