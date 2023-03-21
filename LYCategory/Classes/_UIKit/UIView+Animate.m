//
//  UIView+Animate.m
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

#import "UIView+Animate.h"
#import "LYCategoryConstants.h"


@implementation UIView (Animate)

- (void)showFromScreenBottom {
	
	CGRect frame = self.frame;
	
	// frame.origin.x = 0;
	frame.origin.y = [UIScreen mainScreen].bounds.size.height;
	self.frame = frame;
	
	// TO POS
	frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
	
	[UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
		self.frame = frame;
	} completion:^(BOOL finished) {
		
	}];
}

- (void)showFromScreen:(AnimateViewPosition)postion {
	
	// COPY FRAME
	CGPoint center = self.center;
	CGRect frame = self.frame;
	
	CGSize screen = [UIScreen mainScreen].bounds.size;
	
	switch (postion) {
		case AnimateViewPositionTop: {
			
			// START
			center.y = 0 - frame.size.height;
			self.center = center;
			
			// MOVE TO
			center.y = (screen.height - frame.size.height ) / 2;
			
		} break;
		case AnimateViewPositionLeft: {
			
			// START
			center.x = - center.x - (screen.width / 2);
			self.center = center;
			
			// MOVE TO
			center.x = (screen.width - frame.size.width) / 2;
			
		} break;
		case AnimateViewPositionRight: {
			
			// START
			center.x = screen.width + frame.size.width;
			self.center = center;
			
			// MOVE TO
			center.x = (screen.width - frame.size.width) / 2;
			
		} break;
		case AnimateViewPositionBottom: {
			
			// START
			center.y = screen.height + frame.size.height;
			self.center = center;
			
			// MOVE TO
			center.y = (screen.height - frame.size.height) / 2;
			
		} break;
		default: {
			
		} break;
	}
	
	[UIView animateWithDuration:0.25 animations:^{
		self.center = center;
	} completion:^(BOOL finished) {
		
	}];
}

- (void)animateTo:(CGPoint)pt scale:(CGFloat)scale {
    __block UIView *blockself = self;
    [UIView animateWithDuration:ANIMATE delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        blockself.center = pt;
        blockself.transform = CGAffineTransformMakeScale(scale, scale);
    } completion:nil];
}

@end
