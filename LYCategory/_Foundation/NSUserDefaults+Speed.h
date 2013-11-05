//
//  NSUserDefaults+Speed.h
//  LYCategory
//
//  Created by Rick Luo on 12/5/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (Speed)

#pragma mark - FOR STANDARD

+ (NSString *)stringForKey:(NSString *)defaultName;

+ (NSArray *)arrayForKey:(NSString *)defaultName;

+ (NSDictionary *)dictionaryForKey:(NSString *)defaultName;

@end
