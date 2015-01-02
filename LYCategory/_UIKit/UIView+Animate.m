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

@end
