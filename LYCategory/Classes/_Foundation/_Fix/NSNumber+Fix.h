//
//  NSNumber+Fix.h
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Fix)

- (id)objectAtIndex:(NSUInteger)index;

- (id)objectForKey:(id)aKey;

- (BOOL)isEqualToString:(NSString *)aString;

- (NSUInteger)length;

- (NSString *)string;

- (BOOL)isReal;

@end
