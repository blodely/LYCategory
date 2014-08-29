//
//  NSMutableArray+Fix.m
//  LYCategory
//
//  Created by Luo Yu on 8/24/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSMutableArray+Fix.h"

@implementation NSMutableArray (Fix)

- (void)nullHandler {
	
	const id nul = [NSNull null];
	
	const NSString *blank = @"";
	
	for (int i = 0; i < self.count; i++) {
		
		id obj = self[i];
		
		if (obj == nul) {
			[self replaceObjectAtIndex:i withObject:blank];
		} else if ([obj isKindOfClass:[NSArray class]]) {
			[obj nullHandler];
			[self replaceObjectAtIndex:i withObject:obj];
		} else if ([obj isKindOfClass:[NSDictionary class]]) {
			[obj nullHandler];
			[self replaceObjectAtIndex:i withObject:obj];
		}
		
	}
}

@end
