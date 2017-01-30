//
//  UIImage+Scale.h
//  LYCategory
//
//  Created by Luo Yu on 2/24/14.
//  Email : indie.luo@gmail.com
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)

/**
 resize image

 @param size target size
 @return image result
 */
- (UIImage *)resize:(CGSize)size;

@end
