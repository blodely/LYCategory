//
//  UIColor+Speed.h
//  LYCategory
//
//  CREATED BY LUO YU ON 26/10/2016.
//  COPYRIGHT © 2016 LUO YU. ALL RIGHTS RESERVED.
//

#import <UIKit/UIKit.h>

@interface UIColor (Speed)

/**
 generate color object with red-green-blue values

 @param redValue red color value, 0~255
 @param greenValue green color value, 0~255
 @param blueValue blue color value, 0~255
 @return color object
 */
+ (UIColor *)colorWithR:(CGFloat)redValue G:(CGFloat)greenValue B:(CGFloat)blueValue;

@end
