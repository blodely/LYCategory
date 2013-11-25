//
//  NSString+Input.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSString+Input.h"

@implementation NSString (Input)

#pragma mark EMPTY

- (BOOL)isEmpty {
	
	if (self == nil) {
		return YES;
	}
	
	if ([self isEqualToString:@""]) {
		return YES;
	}
	
	// FOR AFNETWORKING JSON PARSER
	if ([[NSString stringWithFormat:@"%@", self] isEqualToString:@"(null)"] ||
		[[NSString stringWithFormat:@"%@", self] isEqualToString:@"<null>"]) {
		return YES;
	}
	
	return NO;
}

#pragma mark EMAIL

#pragma mark PASSWORD

#pragma mark PHONE NUMBER


@end
