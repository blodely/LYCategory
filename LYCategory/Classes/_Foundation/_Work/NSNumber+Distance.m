//
//  NSNumber+Distance.m
//  LYCategory
//
//  CREATED BY LUO YU ON 2016-12-13.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2016 骆昱(Luo Yu). All rights reserved.
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

#import "NSNumber+Distance.h"

@implementation NSNumber (Distance)

- (NSString *)distanceString {
	
	NSString *disstr;
	
	if ([self doubleValue] > 1000) {
		NSArray *dis = [[NSString stringWithFormat:@"%0.1f", [self doubleValue] / 1000.0f] componentsSeparatedByString:@"."];
		if ([dis[1] intValue] > 0) {
			disstr = [NSString stringWithFormat:@"%0.1f", [self doubleValue] / 1000.0f];
		} else {
			disstr = dis[0];
		}
		disstr = [disstr stringByAppendingString:@"千米"];
	} else {
		disstr = [NSString stringWithFormat:@"%@米", @([self intValue])];
	}
	
	return disstr;
}

@end
