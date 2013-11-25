//
//  NSDictionary+Fix.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSDictionary+Fix.h"

@implementation NSDictionary (Fix)

- (id)objectAtIndex:(NSUInteger)index {
	
	if (self.allKeys.count == 0 || self.allKeys.count <= index) {
		return nil;
	}
	
	return [self objectForKey:[self.allKeys objectAtIndex:index]];
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

- (NSUInteger)length {
	return self.allKeys.count;
}

@end
