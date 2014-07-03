//
//  NSDictionary+Fix.h
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Fix)

- (id)objectAtIndex:(NSUInteger)index;

- (BOOL)isEqualToString:(NSString *)aString;

- (float)floatValue;

- (double)doubleValue;

- (int)intValue;

- (NSInteger)integerValue;

- (long long)longLongValue;

- (NSUInteger)length;

- (BOOL)boolValue;

- (NSDictionary *)filterNull;

@end
