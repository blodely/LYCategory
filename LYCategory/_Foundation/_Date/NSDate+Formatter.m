//
//  NSDate+Formatter.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSDate+Formatter.h"

@implementation NSDate (Formatter)

#pragma mark DATE TO STRING

- (NSString *)stringWithFormat:(NSString *)fmtString {
	
	if (fmtString == nil || ![fmtString isKindOfClass:[NSString class]] || [fmtString isEqualToString:@""]) {
		return nil;
	}
	
	NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
	fmt.dateFormat = fmtString;
	
	return [fmt stringFromDate:self];
}

- (NSString *)stringWithFormat:(NSString *)fmtString andTimezone:(NSString *)timezoneName {
	
	if (fmtString == nil || ![fmtString isKindOfClass:[NSString class]] || [fmtString isEqualToString:@""]) {
		return nil;
	}
	
	NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
	fmt.dateFormat = fmtString;
	if (timezoneName != nil && [timezoneName isKindOfClass:[NSString class]] && ![timezoneName isEqualToString:@""]) {
		fmt.timeZone = [NSTimeZone timeZoneWithName:timezoneName];
	}
	
	return [fmt stringFromDate:self];
}

#pragma mark UTC

- (NSNumber *)utcTimeIntervalSince1970 {
	return [NSNumber numberWithDouble:[self timeIntervalSince1970]];
}

- (NSNumber *)utcTimeIntervalIntSince1970 {
	return nil;
}

- (NSString *)timeIntervalStringSince1970 {
	return [NSString stringWithFormat:@"%f", [self timeIntervalSince1970]];
}

@end
