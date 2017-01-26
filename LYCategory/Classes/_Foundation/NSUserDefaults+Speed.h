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

/**
 float value for key in standard user default

 @param defaultName key name
 @return float value
 */
+ (float)floatForKey:(NSString *)defaultName;

/**
 double value for key in standard user default

 @param defaultName key name
 @return double value
 */
+ (double)doubleForKey:(NSString *)defaultName;

/**
 BOOL value for key in standard user default

 @param defaultName key name
 @return BOOL value
 */
+ (BOOL)boolForKey:(NSString *)defaultName;

/**
 URL object for key in standard user default

 @param defaultName key name
 @return URL object
 */
+ (NSURL *)URLForKey:(NSString *)defaultName;

#pragma mark - WRITE FOR STANDARD

+ (void)setObject:(id)value forKey:(NSString *)defaultName;

#pragma mark - READ ARCHIVE FOR STANDARD

/**
 read archived object for key in standard user default

 @param defaultName key name
 @return unarchived object
 */
+ (id)arcObjectForKey:(NSString *)defaultName;

#pragma mark - WRITE ARCHIVE FOR STANDARD

/**
 storage object that has been archived

 @param value object
 @param defaultName key name
 */
+ (void)setArcObject:(id)value forKey:(NSString *)defaultName;

@end
