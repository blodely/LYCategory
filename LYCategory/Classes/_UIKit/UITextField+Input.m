//
//  UITextField+Input.m
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

#import "UITextField+Input.h"
#import "NSString+Input.h"


@implementation UITextField (Input)

#pragma mark EMPTY

- (BOOL)isEmpty {
	return self == nil || self.text == nil || [self.text isEqualToString:@""];
}

- (BOOL)forCurrencyShouldChange:(NSRange)range to:(NSString *)string {
	
	if ([string isEqualToString:@""]) {
		// ALLOW DELETE OP
		return YES;
	}
	
	if ([string isPureNumber]) {
		// ALLOW PURE NUMBER
		return YES;
	}
	
	if ([string isEqualToString:@"."]) {
		// ONLY ALLOW ONE DOT
		return [self.text containsString:@"."] == NO;
	}
	
//	if ([self.text containsString:@"."]) {
//		// PROCESS TWO DIGITAL NUMBER FOLLOWED BY DOT
//		
//		NSRange dotrange = [self.text rangeOfString:@"."];
//		if (range.location < dotrange.location) {
//			// INSERT NUMBER BEFORE DOT
//			// ALWAYS ALLOWED
//			return YES;
//		}
//		
//		if (range.location > dotrange.location) {
//			// INSERT NUMBER AFTER DOT
//			
//			if ([self.text substringFromIndex:range.location + 1].length < 2) {
//				return YES;
//			} else {
//				return NO;
//			}
//		}
//	}
	
	return NO;
}

@end
