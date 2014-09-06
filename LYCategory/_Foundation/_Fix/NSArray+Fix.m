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

- (NSArray *)nullArrayHandler {
	
	const id nul = [NSNull null];
	
	const NSString *blank = @"";
	
	NSMutableArray *mutSelf = [NSMutableArray arrayWithArray:self];
	
	for (int i = 0; i < self.count; i++) {
		
		id obj = self[i];
		
		if (obj == nul) {
			
			[mutSelf replaceObjectAtIndex:i withObject:blank];
			
		} else if ([obj isKindOfClass:[NSArray class]]) {
			
			if ([obj isKindOfClass:[NSMutableArray class]]) {
				[obj nullMutableArrayHandler];
				[mutSelf replaceObjectAtIndex:i withObject:obj];
			} else {
				[mutSelf replaceObjectAtIndex:i withObject:[obj nullArrayHandler]];
			}
			
		} else if ([obj isKindOfClass:[NSDictionary class]]) {
			
			if ([obj isKindOfClass:[NSMutableDictionary class]]) {
				[obj nullMutableDictionaryHandler];
				[mutSelf replaceObjectAtIndex:i withObject:obj];
			} else {
				[mutSelf replaceObjectAtIndex:i withObject:[obj nullDictionaryHandler]];
			}
			
		}
	}
	
	return [NSArray arrayWithArray:mutSelf];
}

@end
