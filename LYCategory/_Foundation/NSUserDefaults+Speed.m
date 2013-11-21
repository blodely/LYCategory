//
//  NSUserDefaults+Speed.m
//  LYCategory
//
//  Created by Rick Luo on 2013-11.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSUserDefaults+Speed.h"

@implementation NSUserDefaults (Speed)

#pragma mark - FOR STANDARD

+ (NSString *)stringForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] stringForKey:defaultName];
}

+ (NSArray *)arrayForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] arrayForKey:defaultName];
}

+ (NSDictionary *)dictionaryForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] dictionaryForKey:defaultName];
}

+ (NSData *)dataForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] dataForKey:defaultName];
}

+ (NSArray *)stringArrayForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] stringArrayForKey:defaultName];
}

+ (NSInteger)integerForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] integerForKey:defaultName];
}

+ (float)floatForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] floatForKey:defaultName];
}

+ (double)doubleForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] doubleForKey:defaultName];
}

+ (BOOL)boolForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] boolForKey:defaultName];
}

+ (NSURL *)URLForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] URLForKey:defaultName];
}

@end
