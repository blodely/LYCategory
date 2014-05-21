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
	
	if ([[self allKeys] count] == 0 || [[self allKeys] count] <= index) {
		return nil;
	}
	
	return [self objectForKey:[[self allKeys] objectAtIndex:index]];
}

- (BOOL)isEqualToString:(NSString *)aString {
	return NO;
}

- (float)floatValue {
	return 0.0f;
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

- (NSUInteger)length {
	return self.allKeys.count;
}

- (BOOL)boolValue {
	return self != nil && [[self allKeys] count] != 0;
}

- (NSDictionary *)filterNull {
	
	NSMutableDictionary *mself = [NSMutableDictionary dictionaryWithCapacity:1];
	[mself addEntriesFromDictionary:self];
	
	for (id one in [self allKeys]) {
		
		if ([self[one] isEqual:[NSNull null]]) {
			// NULL OBJECT
			LYLog(@"key=%@=NSNull", one);
			
			// REMOVE
			[mself removeObjectForKey:one];
		}
	}
	
	if (mself.allKeys.count == 0) {
		return nil;
	}
	
	return [NSDictionary dictionaryWithDictionary:mself];
}

- (BOOL)hasObjectWithKey:(NSString *)akey {
	
	if (self.allKeys.count == 0 || ![self.allKeys containsObject:akey]) {
		return NO;
	}
	
	if ([self[akey] isEqual:[NSNull null]]) {
		return NO;
	}
	
	if ([self[akey] isKindOfClass:[NSString class]] && [self[akey] isEqualToString:@""]) {
		return NO;
	}
	
	return YES;
}

@end
