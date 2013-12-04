//
//  NSURL+Speed.m
//  LYCategory
//
//  Created by Rick Luo on 12/4/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "NSURL+Speed.h"

@implementation NSURL (Speed)

+ (NSURL *)URLWithFormat:(NSString *)format, ... {
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
		return [NSURL URLWithString:ret];
	}
	
	return nil;
}

@end
