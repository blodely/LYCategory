//
//  NSMutableDictionary+Fix.m
//  LYCategory
//
//  Created by Luo Yu on 8/18/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSMutableDictionary+Fix.h"
#import "NSArray+Fix.h"
#import "NSDictionary+Fix.h"

@implementation NSMutableDictionary (Fix)

- (void)nullMutableDictionaryHandler {
	
	const id nul = [NSNull null];
	const NSString *blank = @"";
	
	for (NSString *key in self.allKeys) {
		id obj = self[key];
		
		if (obj == nul) {
			
			[self setObject:blank forKey:key];
			
		} else if ([obj isKindOfClass:[NSArray class]]) {
			
			if ([obj isKindOfClass:[NSMutableArray class]]) {
				//[obj nullMutableArrayHandler];
				[self setObject:obj forKey:key];
			} else {
				[self setObject:[obj nullArrayHandler] forKey:key];
			}
			
		} else if ([obj isKindOfClass:[NSDictionary class]]) {
			
			if ([obj isKindOfClass:[NSMutableDictionary class]]) {
				[obj nullMutableDictionaryHandler];
				[self setObject:obj forKey:key];
			} else {
				[self setObject:[obj nullDictionaryHandler] forKey:key];
			}
		}
	}
	
	// MODIFIED
}

@end
