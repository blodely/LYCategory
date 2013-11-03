//
//  NSUserDefaults+Speed.m
//  LYCategory
//
//  Created by Rick Luo on 12/5/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSUserDefaults+Speed.h"

@implementation NSUserDefaults (Speed)

#pragma mark - FOR STANDARD

+ (NSString *)stringForKey:(NSString *)defaultName {
	return [[NSUserDefaults standardUserDefaults] stringForKey:defaultName];
}

@end
