//
//  UIImage+Filter.m
//  LYCategory
//
//  Created by Luo Yu on 29/11/2016.
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

#import "UIImage+Filter.h"

@implementation UIImage (Filter)

- (UIImage *)gaussianBlur:(CGFloat)radius {
	
	CIContext *context = [CIContext contextWithOptions:nil];
	CIImage *image = [CIImage imageWithCGImage:self.CGImage];
	CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
	[filter setValue:image forKey:kCIInputImageKey];
	[filter setValue:@(radius) forKey:@"inputRadius"];
	CIImage *result = [filter valueForKey:kCIOutputImageKey];
	CGImageRef outImage = [context createCGImage:result fromRect:[image extent]];
	UIImage *blurImage = [UIImage imageWithCGImage:outImage];
	CGImageRelease(outImage);
	return blurImage;
}

- (UIImage *)grayscale {
	
	CGFloat width = self.size.width;
	CGFloat height = self.size.height;

	CGRect imageRect = (CGRect){0, 0, width, height};
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();

	CGContextRef context = CGBitmapContextCreate(nil, width, height, 8, 0, colorSpace, kCGImageAlphaNone);
	CGContextDrawImage(context, imageRect, self.CGImage);

	CGImageRef grayImage = CGBitmapContextCreateImage(context);
	CGColorSpaceRelease(colorSpace);
	CGContextRelease(context);

	context = CGBitmapContextCreate(nil, width, height, 8, 0, nil, kCGImageAlphaOnly);
	CGContextDrawImage(context, imageRect, self.CGImage);
	CGImageRef mask = CGBitmapContextCreateImage(context);
	CGContextRelease(context);

	UIImage *grayscaleImage = [UIImage imageWithCGImage:CGImageCreateWithMask(grayImage, mask) scale:self.scale orientation:self.imageOrientation];
	CGImageRelease(grayImage);
	CGImageRelease(mask);

	return grayscaleImage;
}

@end
