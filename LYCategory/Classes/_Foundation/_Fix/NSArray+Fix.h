//
//  NSArray+Fix.h
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Fix)

- (id)objectForKey:(id)aKey;

- (id)objAtIdx:(NSInteger)idx;

- (BOOL)isEqualToString:(NSString *)aString;

- (double)doubleValue;

- (int)intValue;

- (NSInteger)integerValue;

- (long long)longLongValue;

- (BOOL)boolValue;

- (NSUInteger)length;

- (NSArray *)nullArrayHandler;

- (BOOL)isReal;

@end
