//
//  NSNumber+Fix.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
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

#import "NSNumber+Fix.h"

@implementation NSNumber (Fix)

- (id)objectAtIndex:(NSUInteger)index {
	return nil;
}

- (id)objAtIdx:(NSInteger)idx {
	return nil;
}

- (id)objectForKey:(id)aKey {
	return nil;
}

- (BOOL)isEqualToString:(NSString *)aString {
	return [[NSString stringWithFormat:@"%@", self] isEqualToString:aString];
}

- (NSUInteger)length {
	return [[NSString stringWithFormat:@"%@", self] length];
}

- (NSString *)string {
	return [NSString stringWithFormat:@"%@", self];
}

- (NSNumber *)integerNumber {
	return @([self integerValue]);
}

- (BOOL)isReal {
	return [self integerValue] != 0;
}

@end
