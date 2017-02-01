//
//  UIView+Animate.h
//  LYCategory
//
//  Created by Luo Yu on 2015-01-01.
//  Copyright (c) 2015 Luo Yu. All rights reserved.
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

@end
