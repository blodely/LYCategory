//
//  UIImage+Filter.h
//  LYCategory
//
//  Created by Luo Yu on 29/11/2016.
//  Email : indie.luo@gmail.com
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Filter)

/**
 image blur filter

 @param radius gaussian blur radius value
 @return image binary data
 */
- (UIImage *)gaussianBlur:(CGFloat)radius;

@end
