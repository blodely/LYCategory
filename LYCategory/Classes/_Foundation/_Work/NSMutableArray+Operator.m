//
//  NSMutableArray+Operator.m
//  LYCategory
//
//  Created by Luo Yu on 7/22/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSMutableArray+Operator.h"

@implementation NSMutableArray (Operator)

- (void)reverse {
	if ([self count] == 0)
		return;
	NSUInteger i = 0;
	NSUInteger j = [self count] - 1;
	while (i < j) {
		[self exchangeObjectAtIndex:i
				  withObjectAtIndex:j];
		
		i++;
		j--;
	}
}

@end
