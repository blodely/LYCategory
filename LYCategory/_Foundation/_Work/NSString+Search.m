//
//  NSString+Search.m
//  LYCategory
//
//  Created by Rick Luo on 12/29/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//	Email: indie.luo@gmail.com
//

#import "NSString+Search.h"

@implementation NSString (Search)

- (BOOL)caseInsensitive:(NSString *)searchString {
	
	if ([searchString length] == 0 || [self length] == 0 ||
		([searchString length] > 0 && [self length] > 0 && searchString.length > self.length)) {
		return NO;
	}
	
	return [[self lowercaseString] rangeOfString:[searchString lowercaseString]].location != NSNotFound;
}

- (BOOL)caseSensitive:(NSString *)searchString {
	
	if ([searchString length] == 0 || [self length] == 0 ||
		([searchString length] > 0 && [self length] > 0 && searchString.length > self.length)) {
		return NO;
	}
	
	return [self rangeOfString:searchString].location != NSNotFound;
}

@end
