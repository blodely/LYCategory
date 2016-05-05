//
//  NSString+Speed.m
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSString+Speed.h"

@implementation NSString (Speed)

- (BOOL)isEqualWithFormat:(NSString *)format, ... {
	
	va_list args;
	id ret;
	
	va_start(args, format);
	if (format == nil) {
		ret = nil;
	} else {
		ret = [[NSString alloc] initWithFormat:format arguments:args];
	}
	
	va_end(args);
	
	if (ret != nil) {
		return [self isEqualToString:ret];
	} else if (self == nil || [self isEqualToString:@""]) {
		return ret == nil;
	}
	
	return NO;
	
}

- (BOOL)isOneOfThem:(NSArray *)strings {
	
	if (strings.count == 0) {
		return NO;
	}
	
	for (id one in strings) {
		if ([one isKindOfClass:[NSString class]]) {
			if ([self isEqualToString:one]) {
				return YES;
			}
		} else {
			if ([self isEqualToString:[NSString stringWithFormat:@"%@", one]]) {
				return YES;
			}
		}
	}
	
	return NO;
}

- (NSString *)removeHTMLtags {
	
	NSString *retstr = [NSString stringWithString:self];
	
	// BR
	retstr = [retstr stringByReplacingOccurrencesOfString:@"<br />" withString:[NSString stringWithFormat:@"\n"]];
	
	NSArray *htmls = @[@"<p>", @"</p>", @"<h1>", @"</h1>", @"<h2>", @"</h2>", @"<h3>", @"</h3>", @"<h4>", @"</h4>", @"<h5>", @"</h5>", @"<em>", @"</em>", @"<code>", @"</code>", ];
	
	for (NSString *one in htmls) {
		retstr = [retstr stringByReplacingOccurrencesOfString:one withString:@""];
	}
	
	return retstr;
}

@end
