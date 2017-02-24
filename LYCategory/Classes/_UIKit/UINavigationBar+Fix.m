//
//  UINavigationBar+Fix.m
//  LYCategory
//
//  Created by Luo Yu on 2017/02/11.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "UINavigationBar+Fix.h"

@implementation UINavigationBar (Fix)

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
	self.userInteractionEnabled = [self pointInside:point withEvent:event];
	return [super hitTest:point withEvent:event];
}

@end
