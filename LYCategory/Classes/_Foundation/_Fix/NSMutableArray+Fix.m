//
//  NSMutableArray+Fix.m
//  LYCategory
//
//  Created by Luo Yu on 8/24/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSMutableArray+Fix.h"
#import "NSArray+Fix.h"
#import "NSDictionary+Fix.h"

@implementation NSMutableArray (Fix)

- (void)nullMutableArrayHandler {
	
	const id nul = [NSNull null];
	
	const NSString *blank = @"";
	
	for (int i = 0; i < self.count; i++) {
		
		id obj = self[i];
		
		if (obj == nul) {
			
			[self replaceObjectAtIndex:i withObject:blank];
			
		} else if ([obj isKindOfClass:[NSArray class]]) {
			
			if ([obj isKindOfClass:[NSMutableArray class]]) {
				[obj nullMutableArrayHandler];
				[self replaceObjectAtIndex:i withObject:obj];
			} else {
				[self replaceObjectAtIndex:i withObject:[obj nullArrayHandler]];
			}
			
		} else if ([obj isKindOfClass:[NSDictionary class]]) {

			if ([obj isKindOfClass:[NSMutableDictionary class]]) {
				//[obj nullMutableDictionaryHandler];
				[self replaceObjectAtIndex:i withObject:obj];
			} else {
				[self replaceObjectAtIndex:i withObject:[obj nullDictionaryHandler]];
			}
		}
		
	}
}

@end
