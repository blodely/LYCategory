//
//  UIImage+Speed.m
//  LYCategory
//
//  Created by Luo Yu on 2018/9/11.
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

#import "UIImage+Speed.h"

@implementation UIImage (Speed)

- (UIColor *)colorAtPixel:(CGPoint)point {
	
	CFDataRef pixelData = CGDataProviderCopyData(CGImageGetDataProvider(self.CGImage));
	const UInt8* data = CFDataGetBytePtr(pixelData);
	
	if (data == NULL) {
		CFRelease(pixelData);
		return [UIColor clearColor];
	}
	
	int pixeldet = ((self.size.width  * point.y) + point.x ) * 4;
	
	UInt8 red = data[pixeldet];
	UInt8 green = data[(pixeldet + 1)];
	UInt8 blue = data[pixeldet + 2];
	UInt8 alpha = data[pixeldet + 3];
	
	CFRelease(pixelData);
	
	return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha/255.0f];;
}

+ (instancetype)originalNamed:(NSString *)imageName {
	return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)originalNamed:(NSString *)imageName inBundle:(NSBundle *)bundle {
	return [[UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)templateNamed:(NSString *)imageName {
	return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
}

@end
