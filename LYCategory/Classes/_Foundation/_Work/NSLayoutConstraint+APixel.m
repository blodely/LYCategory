//
//  NSLayoutConstraint+APixel.m
//  LUO YU
//
//  CREATED BY LUO YU ON 8/4/15.
//  COPYRIGHT (C) 2015 LUO YU. ALL RIGHTS RESERVED.
//

#import "NSLayoutConstraint+APixel.h"

@implementation NSLayoutConstraint (APixel)

- (NSInteger)preciseConstant {
	return (NSInteger)(self.constant * [UIScreen mainScreen].scale);
}

- (void)setPreciseConstant:(NSInteger)preciseConstant {
	self.constant = (CGFloat)preciseConstant / [UIScreen mainScreen].scale;
}

@end
