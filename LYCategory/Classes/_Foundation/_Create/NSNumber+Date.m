//
//  NSNumber+Date.m
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSNumber+Date.h"

@implementation NSNumber (Date)

#pragma mark UTC TIME

- (NSDate *)date {
	return [NSDate dateWithTimeIntervalSince1970:[self doubleValue]];
}

@end
