//
//  UIView+Speed.m
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

#import "UIView+Speed.h"
#import "LYCategoryConstants.h"


@implementation UIView (Speed)

- (void)roundedCornerRadius:(CGFloat)radius {
	self.layer.masksToBounds = YES;
	self.layer.cornerRadius = radius;
}

- (void)borderWithWidth:(CGFloat)width andColor:(UIColor *)color {
	self.layer.borderColor = color.CGColor;
	self.layer.borderWidth = width;
}

- (void)border1Px {
	self.layer.borderColor = self.tintColor.CGColor;
	self.layer.borderWidth = 1.0 / [UIScreen mainScreen].scale;
}

- (void)strokeSubviews {
	for (UIView *one in self.subviews) {
		[one border1Px];
	}
}

- (void)removeBorder {
	self.layer.borderColor = [UIColor clearColor].CGColor;
	self.layer.borderWidth = 0;
}

- (void)shadowWithRadius:(CGFloat)radius opacity:(CGFloat)opacity {
	self.layer.masksToBounds = NO;
	self.layer.shadowRadius = radius;
	self.layer.shadowColor = [UIColor blackColor].CGColor;
	self.layer.shadowOpacity = opacity;
	self.layer.shadowOffset = CGSizeZero;
}

- (void)pauseUserInteractionFor:(float)second {
	self.userInteractionEnabled = NO;
	[self performSelector:@selector(reenableUserInteraction) withObject:nil afterDelay:MAX(second, 0)];
}

- (void)pauseUserInteractionForASecond {
	[self pauseUserInteractionFor:1];
}

- (void)reenableUserInteraction {
	self.userInteractionEnabled = YES;
}

// MARK: - SUBVIEW OPS

- (void)removeAllSubviews {
	for (UIView *one in self.subviews) {
		[one removeFromSuperview];
	}
}

- (void)removeAllSubviewsWithClassNamed:(NSString *)className {
	if (className == nil || [className isKindOfClass:[NSString class]] == NO || [className isEqualToString:@""]) {
		return;
	}
	
	for (UIView *one in self.subviews) {
		if ([one isKindOfClass:NSClassFromString(className)]) {
			[one removeFromSuperview];
		}
	}
}

// MARK: - ANIMATE CENTER

- (void)animateCenterTo:(CGPoint)center {
    if (self.superview == nil) {
        return;
    }
    
    __block UIView *blockself = self;
    [UIView animateWithDuration:ANIMATE delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        blockself.center = center;
    } completion:^(BOOL finished) {
    }];
}

- (void)animateCenterX:(CGFloat)xvalue {
    if (self.superview == nil) {
        return;
    }
    
    __block CGPoint center = self.center;
    center.x = xvalue;
    __block UIView *blockself = self;
    
    [UIView animateWithDuration:ANIMATE delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        blockself.center = center;
    } completion:^(BOOL finished) {
    }];
}

- (void)animateCenterY:(CGFloat)yvalue {
    if (self.superview == nil) {
        return;
    }
    
    __block CGPoint center = self.center;
    center.y = yvalue;
    __block UIView *blockself = self;
    
    [UIView animateWithDuration:ANIMATE delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        blockself.center = center;
    } completion:^(BOOL finished) {
    }];
}

// MARK: - FRAME

- (void)makeFrameCenterAtSuperview {
    if (self.superview == nil) {
        return;
    }
    
    CGSize size = self.superview.frame.size;
    CGPoint center = (CGPoint){floor(size.width * 0.5), floor(size.height * 0.5)};
    self.center = center;
}

// MARK: CONSTRAINT

- (void)makeEdgeEqualTo:(UIView *)anotherView insets:(UIEdgeInsets)inset {
	if (anotherView == nil) {
		return;
	}
	
//	self.translatesAutoresizingMaskIntoConstraints = NO; // EXPLICIT CALL (SHOULD)
	
	[self.leftAnchor constraintEqualToAnchor:anotherView.leftAnchor constant:inset.left].active = YES;
	[self.rightAnchor constraintEqualToAnchor:anotherView.rightAnchor constant:inset.right].active = YES;
	[self.topAnchor constraintEqualToAnchor:anotherView.topAnchor constant:inset.top].active = YES;
	[self.bottomAnchor constraintEqualToAnchor:anotherView.bottomAnchor constant:inset.bottom].active = YES;
	
}

- (void)makeEdgeEqualTo:(UIView *)anotherView {
	[self makeEdgeEqualTo:anotherView insets:UIEdgeInsetsZero];
}

- (void)makeEdgeEqualToSuperView {
	[self makeEdgeEqualTo:self.superview insets:UIEdgeInsetsZero];
}

- (void)makeHorizontalEdgeEqualTo:(UIView *)anotherView insets:(UIEdgeInsets)inset {
    if (anotherView == nil) {
        // DO NOTHING
        return;
    }
    
//    self.translatesAutoresizingMaskIntoConstraints = NO; // EXPLICIT CALL (SHOULD)
    
    [self.leftAnchor constraintEqualToAnchor:anotherView.leftAnchor constant:inset.left].active = YES;
    [self.rightAnchor constraintEqualToAnchor:anotherView.rightAnchor constant:inset.right].active = YES;
}

- (void)makeHorizontalEdgeEqualToSuperView {
    [self makeHorizontalEdgeEqualTo:self.superview insets:UIEdgeInsetsZero];
}

- (void)makeVerticalEdgeEqualTo:(UIView *)anotherView insets:(UIEdgeInsets)inset {
    if (anotherView == nil) {
        return;
    }
    
    [self.topAnchor constraintEqualToAnchor:anotherView.topAnchor constant:inset.top].active = YES;
    [self.bottomAnchor constraintEqualToAnchor:anotherView.bottomAnchor constant:inset.bottom].active = YES;
}

- (void)makeVerticalEdgeEqualToSuperView {
    [self makeVerticalEdgeEqualTo:self.superview insets:UIEdgeInsetsZero];
}

- (void)removeAllConstraints {
    
    UIView *superview = self; //self.superview;
    while (superview != nil) {
        for (NSLayoutConstraint *cs in superview.constraints) {
            if (cs.firstItem == self || cs.secondItem == self) {
                [superview removeConstraint:cs];
            }
        }
        superview = superview.superview;
    }
    
    //[self removeConstraints:self.constraints];
}

@end
