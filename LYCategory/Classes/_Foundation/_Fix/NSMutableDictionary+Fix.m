//
//  NSMutableDictionary+Fix.m
//  LYCategory
//
//  Created by Luo Yu on 8/18/14.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2014 骆昱(Luo Yu). All rights reserved.
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

#import "NSMutableDictionary+Fix.h"
#import "NSArray+Fix.h"
#import "NSDictionary+Fix.h"

@implementation NSMutableDictionary (Fix)


- (void)nullMutableDictionaryHandler {
	const id nul = [NSNull null];
	const NSString *blank = @"";
	for (NSString *key in self.allKeys) {
		id obj = self[key];
		if (obj == nul) {
			[self setObject:blank forKey:key];
		} else if ([obj isKindOfClass:[NSArray class]]) {
			if ([obj isKindOfClass:[NSMutableArray class]]) {
				//[obj nullMutableArrayHandler];
				[self setObject:obj forKey:key];
			} else {
				[self setObject:[obj nullArrayHandler] forKey:key];
			}
		} else if ([obj isKindOfClass:[NSDictionary class]]) {
			if ([obj isKindOfClass:[NSMutableDictionary class]]) {
				[obj nullMutableDictionaryHandler];
				[self setObject:obj forKey:key];
			} else {
				[self setObject:[obj nullDictionaryHandler] forKey:key];
			}
		}
	}
	// MODIFIED
}

@end
