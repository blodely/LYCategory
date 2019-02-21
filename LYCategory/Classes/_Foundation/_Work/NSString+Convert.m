//
//  NSString+Convert.m
//  LYCATEGORY
//
//  CREATED BY LUO YU ON 2016-11-04.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2016 骆昱(Luo Yu). All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy of
//	this software and associated documentation files (the "Software"), to deal in
//	the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//	the Software, and to permit persons to whom the Software is furnished to do so,
//	subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
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
	} else {
		// THIS WILL NEVER BE EXCUTED
		// ADD ONLY FOR COMPILE CHECK
		birthday = [NSDate date];
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

+ (NSString *)numberToChinese:(NSInteger)integer {
	NSNumberFormatter *fmt = [[NSNumberFormatter alloc] init];
	fmt.locale = [NSLocale localeWithLocaleIdentifier:@"zh_CN"];
	fmt.numberStyle = NSNumberFormatterSpellOutStyle;
	return [fmt stringFromNumber:@(integer)];
}

- (NSArray *)parseGETParameters {
	
	NSMutableArray *retmut = [NSMutableArray arrayWithCapacity:1];
	
	for (NSString *one in [self componentsSeparatedByString:@"&"]) {
		if ([one containsString:@"="] == NO) {
			continue;
		}
		
		NSArray *oneret = [one componentsSeparatedByString:@"="];
		if (oneret == nil || [oneret count] != 2) {
			continue;
		}
		
		[retmut addObject:@{[NSString stringWithFormat:@"%@", oneret.firstObject]:oneret.lastObject}];
	}
	
	return [NSArray arrayWithArray:retmut];
}

@end
