//
//  NSUserDefaults+Speed.h
//  LYCategory
//
//  Created by Rick Luo on 2013-11.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (Speed)

#pragma mark - FOR STANDARD

+ (NSString *)stringForKey:(NSString *)defaultName;

+ (NSArray *)arrayForKey:(NSString *)defaultName;

+ (NSDictionary *)dictionaryForKey:(NSString *)defaultName;

+ (NSData *)dataForKey:(NSString *)defaultName;

+ (NSArray *)stringArrayForKey:(NSString *)defaultName;

+ (NSInteger)integerForKey:(NSString *)defaultName;

@end
