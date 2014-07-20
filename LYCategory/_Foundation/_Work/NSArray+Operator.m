//
//  NSArray+Operator.m
//  LYCategory
//
//  Created by Luo Yu on 7/19/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSArray+Operator.h"

@implementation NSArray (Operator)

- (NSArray *)reversed {
	NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
	NSEnumerator *enumerator = [self reverseObjectEnumerator];
	for (id element in enumerator) {
		[array addObject:element];
	}
	return [NSArray arrayWithArray:array];
}

@end
