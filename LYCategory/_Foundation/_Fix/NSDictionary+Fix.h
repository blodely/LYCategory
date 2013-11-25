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

- (double)doubleValue;

- (int)intValue;

- (NSUInteger)length;

@end
