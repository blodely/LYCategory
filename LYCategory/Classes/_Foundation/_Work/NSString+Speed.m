//
//  NSString+Speed.m
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2013 骆昱(Luo Yu). All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy of
//	this software and associated documentation files (the "Software"), to deal in
//	the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//	the Software, and to permit persons to whom the Software is furnished to do so,
//	subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
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
