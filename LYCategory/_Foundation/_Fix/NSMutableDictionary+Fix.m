//
//  NSMutableDictionary+Fix.m
//  LYCategory
//
//  Created by Luo Yu on 8/18/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSMutableDictionary+Fix.h"

@implementation NSMutableDictionary (Fix)

- (void)nullMutableDictionaryHandler {
	
	const id nul = [NSNull null];
	const NSString *blank = @"";
	
	for (NSString *key in self.allKeys) {
		id obj = self[key];
		
		if (obj == nul) {
			[self setObject:blank forKey:key];
		} else if ([obj isKindOfClass:[NSMutableArray class]]) {
			[obj nullMutableArrayHandler];
			[self setObject:obj forKey:key];
			return;
		} else if ([obj isKindOfClass:[NSMutableDictionary class]]) {
			[obj nullMutableDictionaryHandler];
			[self setObject:obj forKey:key];
			return;
		} else if ([obj isKindOfClass:[NSArray class]]) {
			[self setObject:[obj nullArrayHandler] forKey:key];
			return;
		} else if ([obj isKindOfClass:[NSDictionary class]]) {
			[self setObject:[obj nullDictionaryHandler] forKey:key];
			return;
		}
	}
	
	// MODIFIED
}

@end
