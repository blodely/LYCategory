//
//  UIView+Speed.m
//  LYCategory
//
//  Created by Luo Yu on 2018/7/2.
//  Email: indie.luo@gmail.com
//  Copyright (c) 2018 Luo Yu. All rights reserved.
//

#import "UIView+Speed.h"


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

@end
