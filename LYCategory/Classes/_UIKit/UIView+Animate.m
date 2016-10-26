//
//  UIView+Animate.m
//  LYCategory
//
//  Created by Luo Yu on 2015-01-01.
//  Copyright (c) 2015 Luo Yu. All rights reserved.
//

#import "UIView+Animate.h"

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

@end
