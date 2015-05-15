//
//  UIView+Screenshot.m
//  LYCategory
//
//  Created by Luo Yu on 2014/03/01.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "UIView+Screenshot.h"

@implementation UIView (Screenshot)

- (UIImage *)imageShot {
	// SCREENSHOT
	UIGraphicsBeginImageContext(self.bounds.size);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
	return image;
}

@end
