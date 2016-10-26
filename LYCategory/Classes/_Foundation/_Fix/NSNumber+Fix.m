//
//  NSNumber+Fix.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSNumber+Fix.h"

@implementation NSNumber (Fix)

- (id)objectAtIndex:(NSUInteger)index {
	return nil;
}

- (id)objectForKey:(id)aKey {
	return nil;
}

- (BOOL)isEqualToString:(NSString *)aString {
	return [[NSString stringWithFormat:@"%@", self] isEqualToString:aString];
}

- (NSUInteger)length {
	return 0;
}

- (NSString *)string {
	return [NSString stringWithFormat:@"%@", self];
}

- (BOOL)isReal {
	return [self intValue] != 0;
}

@end
