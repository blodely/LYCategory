//
//  UIImage+Filter.m
//  LYCategory
//
//  Created by Luo Yu on 29/11/2016.
//  Email : indie.luo@gmail.com
//  Copyright (c) 2014 Luo Yu. All rights reserved.
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
	UIImage * blurImage = [UIImage imageWithCGImage:outImage];
	CGImageRelease(outImage);
	return blurImage;
}

@end
