//
//  NSArray+Fix.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSArray+Fix.h"

@implementation NSArray (Fix)

- (id)objectForKey:(id)aKey {
	return nil;
}

- (BOOL)isEqualToString:(NSString *)aString {
	return NO;
}

- (double)doubleValue {
	return 0.0f;
}

- (int)intValue {
	return 0;
}

- (NSInteger)integerValue {
	return 0;
}

- (long long)longLongValue {
	return 0;
}

- (BOOL)boolValue {
	return self != nil && [self count] != 0;
}

- (NSUInteger)length {
	return [self count];
}

@end
