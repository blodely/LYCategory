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

- (BOOL)isEmail {
	
	// RFC 2822
	
	NSString *emailRegex =
	@"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
	@"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
	@"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
	@"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
	@"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
	@"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
	@"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    
	NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", emailRegex];
	
    return [emailTest evaluateWithObject:self];
	
}

#pragma mark PASSWORD

#pragma mark PHONE NUMBER

- (NSString *)phoneNumber {
	return [[self componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"/.,()-+  "]] componentsJoinedByString:@""];
}

@end
