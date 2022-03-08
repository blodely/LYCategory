//
//  NSNumber+Fix.h
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

#import <Foundation/Foundation.h>

@interface NSNumber (Fix)

- (id)objectAtIndex:(NSUInteger)index;

- (id)objAtIdx:(NSInteger)idx;

- (id)objectForKey:(id)aKey;

- (BOOL)isEqualToString:(NSString *)aString;

/**
 get length of the object as string

 @return length
 */
- (NSUInteger)length;

/// convert number object to string
- (NSString *)string;

/// fix for to integer number object converting
- (NSNumber *)integerNumber;

/**
 number in object is not 0 means it's "real"

 @return number with value not 0
 */
- (BOOL)isReal;

@end
