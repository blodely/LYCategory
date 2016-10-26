//
//  NSString+Fix.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSString+Fix.h"

@implementation NSString (Fix)

- (id)objectAtIndex:(NSUInteger)index {
	return nil;
}

- (id)objectForKey:(id)aKey {
	return nil;
}

- (BOOL)isReal {
	return ![self isEqualToString:@"0"] && ![self isEqualToString:@"<NSNull>"];
}

@end
