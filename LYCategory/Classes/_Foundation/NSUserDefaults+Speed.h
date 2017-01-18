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

/**
 string value for key in standard user default

 @param defaultName key name
 @return string value
 */
+ (NSString *)stringForKey:(NSString *)defaultName;

/**
 array value for key in standard user default

 @param defaultName key name
 @return array value
 */
+ (NSArray *)arrayForKey:(NSString *)defaultName;

/**
 dictionary value for key in standard user default

 @param defaultName key name
 @return dictionary value
 */
+ (NSDictionary *)dictionaryForKey:(NSString *)defaultName;

/**
 binary data value for key in standard user default

 @param defaultName key name
 @return binary data
 */
+ (NSData *)dataForKey:(NSString *)defaultName;

/**
 array of strings value for key in standard user default

 @param defaultName key name
 @return array object
 */
+ (NSArray *)stringArrayForKey:(NSString *)defaultName;

/**
 integer value for key in standard user default

 @param defaultName key name
 @return integer value
 */
+ (NSInteger)integerForKey:(NSString *)defaultName;

+ (float)floatForKey:(NSString *)defaultName;

+ (double)doubleForKey:(NSString *)defaultName;

+ (BOOL)boolForKey:(NSString *)defaultName;

+ (NSURL *)URLForKey:(NSString *)defaultName;

#pragma mark - WRITE FOR STANDARD

+ (void)setObject:(id)value forKey:(NSString *)defaultName;

#pragma mark - READ ARCHIVE FOR STANDARD

+ (id)arcObjectForKey:(NSString *)defaultName;

#pragma mark - WRITE ARCHIVE FOR STANDARD

+ (void)setArcObject:(id)value forKey:(NSString *)defaultName;

@end
