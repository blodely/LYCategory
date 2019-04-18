//
//	UIDevice+Speed.m
//  LYCategory
//
//  Created by Luo Yu on 2018/04/17.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2019 骆昱(Luo Yu). All rights reserved.
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

#import "UIDevice+Speed.h"
#import <sys/sysctl.h>
#import <sys/utsname.h>


NSString *const LYCN_iPhone_Xs = @"lycn.ip.xs";
NSString *const LYCN_iPhone_XsMax = @"lycn.ip.xs.max";
NSString *const LYCN_iPhone_XR = @"lycn.ip.xr";
NSString *const LYCN_iPhone_X = @"lycn.ip.x";
NSString *const LYCN_iPhone_8 = @"lycn.ip.8";
NSString *const LYCN_iPhone_8Plus = @"lycn.ip.8.plus";
NSString *const LYCN_iPhone_7 = @"lycn.ip.7";
NSString *const LYCN_iPhone_7Plus = @"lycn.ip.7.plus";
NSString *const LYCN_iPhone_SE = @"lycn.ip.se";
NSString *const LYCN_iPhone_6s = @"lycn.ip.6s";
NSString *const LYCN_iPhone_6sPlus = @"lycn.ip.6s.plus";
NSString *const LYCN_iPhone_6 = @"lycn.ip.6";
NSString *const LYCN_iPhone_6Plus = @"lycn.ip.6.plus";
NSString *const LYCN_iPhone_5s = @"lycn.ip.5s";
NSString *const LYCN_iPhone_5 = @"lycn.ip.5";
NSString *const LYCN_iPhone_5c = @"lycn.ip.5c";
NSString *const LYCN_iPhone_4s = @"lycn.ip.4s";
NSString *const LYCN_iPhone_4 = @"lycn.ip.4";
NSString *const LYCN_iPhone_3GS = @"lycn.ip.3gs";
NSString *const LYCN_iPhone_3G = @"lycn.ip.3g";
NSString *const LYCN_iPhone_1 = @"lycn.ip.1";

NSString *const LYCN_iPhone_Unknown = @"lycn.ip.unknown";


@implementation UIDevice (Speed)

+ (NSString *)phoneIdentifier {
	struct utsname systemInfo;
	uname(&systemInfo);
	return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

+ (NSString *)phoneIDDescription {
	NSString *phoneid = [self phoneIdentifier];
	
	if (phoneid == nil || [phoneid isEqualToString:@""]) {
		return LYCN_iPhone_Unknown;
	}
	
	if ([phoneid isEqualToString:@"iPhone1,1"]) {
		return LYCN_iPhone_1;
	}
	
	if ([phoneid isEqualToString:@"iPhone1,2"]) {
		return LYCN_iPhone_3G;
	}
	
	if ([phoneid isEqualToString:@"iPhone2,1"]) {
		return LYCN_iPhone_3GS;
	}
	
	if ([phoneid isEqualToString:@"iPhone3,1"] || [phoneid isEqualToString:@"iPhone3,2"] || [phoneid isEqualToString:@"iPhone3,3"]) {
		return LYCN_iPhone_4;
	}
	
	if ([phoneid isEqualToString:@"iPhone4,1"]) {
		return LYCN_iPhone_4s;
	}
	
	if ([phoneid isEqualToString:@"iPhone5,1"] || [phoneid isEqualToString:@"iPhone5,2"]) {
		return LYCN_iPhone_5;
	}
	
	if ([phoneid isEqualToString:@"iPhone5,3"] || [phoneid isEqualToString:@"iPhone5,4"]) {
		return LYCN_iPhone_5c;
	}
	
	if ([phoneid isEqualToString:@"iPhone6,1"] || [phoneid isEqualToString:@"iPhone6,2"]) {
		return LYCN_iPhone_5s;
	}
	
	if ([phoneid isEqualToString:@"iPhone7,2"]) {
		return LYCN_iPhone_6;
	}
	
	if ([phoneid isEqualToString:@"iPhone7,1"]) {
		return LYCN_iPhone_6Plus;
	}
	
	if ([phoneid isEqualToString:@"iPhone8,1"]) {
		return LYCN_iPhone_6s;
	}
	
	if ([phoneid isEqualToString:@"iPhone8,2"]) {
		return LYCN_iPhone_6sPlus;
	}
	
	if ([phoneid isEqualToString:@"iPhone8,4"]) {
		return LYCN_iPhone_SE;
	}
	
	if ([phoneid isEqualToString:@"iPhone9,1"] || [phoneid isEqualToString:@"iPhone9,3"]) {
		return LYCN_iPhone_7;
	}
	
	if ([phoneid isEqualToString:@"iPhone9,2"] || [phoneid isEqualToString:@"iPhone9,4"]) {
		return LYCN_iPhone_7Plus;
	}
	
	if ([phoneid isEqualToString:@"iPhone10,1"] || [phoneid isEqualToString:@"iPhone10,4"]) {
		return LYCN_iPhone_8;
	}
	
	if ([phoneid isEqualToString:@"iPhone10,2"] || [phoneid isEqualToString:@"iPhone10,5"]) {
		return LYCN_iPhone_8Plus;
	}
	
	if ([phoneid isEqualToString:@"iPhone10,3"] || [phoneid isEqualToString:@"iPhone10,6"]) {
		return LYCN_iPhone_X;
	}
	
	if ([phoneid isEqualToString:@"iPhone11,2"]) {
		return LYCN_iPhone_Xs;
	}
	
	if ([phoneid isEqualToString:@"iPhone11,6"]) {
		return LYCN_iPhone_XsMax;
	}
	
	if ([phoneid isEqualToString:@"iPhone11,8"]) {
		return LYCN_iPhone_XR;
	}
	
	return LYCN_iPhone_Unknown;
}

@end
