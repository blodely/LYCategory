//
//  LYLogX.m
//  LYCategory
//
//  Created by 骆昱 on 2014-03-15.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "LYLogX.h"

@implementation LYLogX

void
LYLog(NSString* format, ...) {
	
	va_list ap;
	
	va_start(ap, format);
	NSLogv([@"\n>>LERR>>> >>> >>>\n" stringByAppendingString:format], ap);
	va_end(ap);
	
}

@end
