//
//  UIApplication+Speed.m
//  LYCategory
//
//  Created by Luo Yu on 2021/12/22.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2021 骆昱(Luo Yu). All rights reserved.
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

#import "UIApplication+Speed.h"
#import "NSString+Input.h"


@implementation UIApplication (Speed)

- (void)justOpenURL:(NSURL *)URL {
	if (URL == nil) {
		return;
	}
	
	[self openURL:URL options:@{} completionHandler:nil]; // since iOS10.x
}

- (void)justOpenURLString:(NSString *)URLString {
	if (URLString == nil || [URLString isEmpty]) {
		return;
	}
	
	[self justOpenURL:[NSURL URLWithString:URLString]];
}

- (void)justOpenURLWithFormat:(NSString *)format, ... {
	
	va_list args;
	id ret;
	
	va_start(args, format);
	if (format == nil) {
		ret = nil;
	} else {
		ret = [[NSString alloc] initWithFormat:format arguments:args];
	}
	
	va_end(args);
	
	if (ret == nil) {
		return;
	}
	
	[self justOpenURL:[NSURL URLWithString:ret]];
}

+ (void)sharedAppOpenURLWithFormat:(NSString *)format, ... {
	va_list args;
	id ret;
	
	va_start(args, format);
	if (format == nil) {
		ret = nil;
	} else {
		ret = [[NSString alloc] initWithFormat:format arguments:args];
	}
	
	va_end(args);
	
	if (ret == nil) {
		return;
	}
	
	[[UIApplication sharedApplication] justOpenURL:[NSURL URLWithString:ret]];
}

@end
