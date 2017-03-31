//
//  NSString+Convert.m
//  LYCATEGORY
//
//  CREATED BY LUO YU ON 2016-11-04.
//  COPYRIGHT (C) 2016 LUO YU. ALL RIGHTS RESERVED.
//

#import "NSString+Convert.h"
#import "NSString+Date.h"
#import "NSString+Input.h"

@implementation NSString (Convert)

- (NSString *)encodingURL {
	return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
}

- (NSString *)pinyin {
	NSMutableString *mutableString = [[NSMutableString alloc] initWithString:self];
	CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformMandarinLatin, NO);
	CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformStripDiacritics, NO);
	return [NSString stringWithString:mutableString];
}

- (NSString *)indexLetter {
	return [[[self pinyin] substringToIndex:1] uppercaseString];
}

- (NSDate *)extractBirthdayFromIDNumber {
	
	if (self.length == 15) {
		return [[NSString stringWithFormat:@"19%@", [self substringWithRange:NSMakeRange(6, 6)]] dateWithFormat:@"yyyyMMdd" andTimezone:@"Asia/Shanghai"];
	}
	
	if (self.length == 18) {
		return [[self substringWithRange:NSMakeRange(6, 8)] dateWithFormat:@"yyyyMMdd" andTimezone:@"Asia/Shanghai"];
	}
	
	return nil;
}

- (NSUInteger)extractAgeFromIDNumber {
	
	if (self.length != 15 && self.length != 18) {
		return 0;
	}
	
	NSDate *birthday;
	
	if (self.length == 15) {
		// FIRST GENERATION ID
		birthday = [[NSString stringWithFormat:@"19%@", [self substringWithRange:NSMakeRange(6, 6)]] dateWithFormat:@"yyyyMMdd" andTimezone:@"Asia/Shanghai"];
	} else if (self.length == 18) {
		// SECOND GENERATION ID
		birthday = [[self substringWithRange:NSMakeRange(6, 8)] dateWithFormat:@"yyyyMMdd" andTimezone:@"Asia/Shanghai"];
	}
	
	NSDateComponents *cpBirthday = [[NSCalendar currentCalendar] components:(NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitYear) fromDate:birthday];
	NSDateComponents *cpToday = [[NSCalendar currentCalendar] components:(NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitYear) fromDate:[NSDate date]];
	
	NSUInteger age = cpToday.year - cpBirthday.year - 1;
	if ((cpToday.month > cpBirthday.month) || (cpToday.month == cpBirthday.month && cpToday.day >= cpBirthday.day)) {
		age++;
	}
	
	return age;
}

- (NSString *)extractGenderFromIDNumber {
	
	if (![self isIDNumber]) {
		return @"";
	}
	
	if (self.length == 15) {
		return [[self substringFromIndex:14] intValue] % 2 > 0 ? @"男" : @"女";
	} else if (self.length == 18) {
		return [[self substringWithRange:NSMakeRange(16, 1)] intValue] % 2 > 0 ? @"男" : @"女";
	}
	
	return @"";
}

@end
