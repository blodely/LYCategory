//
//  NSDictionary+Fix.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSDictionary+Fix.h"
#import "NSArray+Fix.h"

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
	
	if ([self[akey] isEqual:[NSNull null]]) {
		return NO;
	}
	
	return YES;
}

#pragma mark -

- (id)objectInKeys:(NSArray *)keys {
	
	if (keys == nil || [keys isKindOfClass:[NSArray class]] == NO || keys.count == 0) {
		return nil;
	}
	
	for (NSString *one in keys) {
		if (![one isEqual:[NSNull null]] && [self hasObjectWithKey:one]) {
			return self[one];
		}
	}
	
	return nil;
}

- (int)intInKeys:(NSArray *)keys {
	
	if (keys == nil || ![keys isKindOfClass:[NSArray class]] || keys.count == 0) {
		return 0;
	}
	
	for (NSString *one in keys) {
		if (![one isEqual:[NSNull null]] && [self hasObjectWithKey:one]) {
			return [self[one] intValue];
		}
	}
	
	return 0;
}

- (NSString *)stringInKeys:(NSArray *)keys {
	
	if (keys == nil || ![keys isKindOfClass:[NSArray class]] || keys.count == 0) {
		return @"";
	}
	
	for (NSString *one in keys) {
		if (![one isEqual:[NSNull null]] && [self hasObjectWithKey:one]) {
			return [NSString stringWithFormat:@"%@", self[one]];
		}
	}
	
	return @"";
}

- (NSDictionary *)nullDictionaryHandler {
	
	const id nul = [NSNull null];
	const NSString *blank = @"";
	
	NSMutableDictionary *mutSelf = [NSMutableDictionary dictionaryWithDictionary:self];
	
	for (NSString *key in self.allKeys) {
		
		id obj = self[key];
		
		if (obj == nul) {
			
			[mutSelf setObject:blank forKey:key];
			
		} else if ([obj isKindOfClass:[NSArray class]]) {
			
			[mutSelf setObject:[obj nullArrayHandler] forKey:key];
			
			//if ([obj isKindOfClass:[NSMutableArray class]]) {
			//	[obj nullMutableArrayHandler];
			//	[mutSelf setObject:obj forKey:key];
			//} else {
			//	[mutSelf setObject:[obj nullArrayHandler] forKey:key];
			//}
			
		} else if ([obj isKindOfClass:[NSDictionary class]]) {
			
			[mutSelf setObject:[obj nullDictionaryHandler] forKey:key];
			
			//if ([obj isKindOfClass:[NSMutableDictionary class]]) {
			//	[obj nullMutableDictionaryHandler];
			//	[mutSelf setObject:obj forKey:key];
			//} else {
			//	[mutSelf setObject:[obj nullDictionaryHandler] forKey:key];
			//}
			
		}
	}
	
	return [NSDictionary dictionaryWithDictionary:mutSelf];
}

- (BOOL)isReal {
	return self.allKeys.count > 0;
}

// OVERWRITE FOR HANS LOG
- (NSString *)descriptionWithLocale:(id)locale {
	NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
	
	[self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
		[strM appendFormat:@"\t%@ = %@;\n", key, obj];
	}];
	
	[strM appendString:@"}\n"];
	
	return strM;
}

@end
