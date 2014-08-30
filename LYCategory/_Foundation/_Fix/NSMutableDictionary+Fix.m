//
//  NSMutableDictionary+Fix.m
//  LYCategory
//
//  Created by Luo Yu on 8/18/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSMutableDictionary+Fix.h"

@implementation NSMutableDictionary (Fix)

- (void)nullHandler {
	
	const id nul = [NSNull null];
	const NSString *blank = @"";
	
	for (NSString *key in self) {
		id obj = self[key];
		
		if (obj == nul) {
			[self setObject:blank forKey:key];
		} else if ([obj isKindOfClass:[NSArray class]]) {
			[obj nullHandler];
			[self setObject:obj forKey:key];
		} else if ([obj isKindOfClass:[NSDictionary class]]) {
			[obj nullHandler];
			[self setObject:obj forKey:key];
		}
	}
	
	// MODIFIED
}

@end
