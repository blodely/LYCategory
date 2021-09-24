//
//  NSUserDefaults+Speed.h
//  LYCategory
//
//  Created by Rick Luo on 2013-11.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2013 骆昱(Luo Yu). All rights reserved.
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
 @param cls class name for the data type
 @return unarchived object
 */
+ (id)arcObjectForKey:(NSString *)defaultName withDataTypeClass:(Class)cls;

#pragma mark - WRITE ARCHIVE FOR STANDARD

/**
 storage object that has been archived

 @param value object
 @param defaultName key name
 */
+ (void)setArcObject:(id)value forKey:(NSString *)defaultName;

@end
