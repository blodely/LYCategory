//
//  UIColor+Speed.m
//  LYCategory
//
//  CREATED BY LUO YU ON 26/10/2016.
//  COPYRIGHT © 2016 LUO YU. ALL RIGHTS RESERVED.
//

#import "UIColor+Speed.h"

@implementation UIColor (Speed)

+ (UIColor *)colorWithR:(CGFloat)redValue G:(CGFloat)greenValue B:(CGFloat)blueValue {
	
	redValue = MAX(redValue, 0);
	redValue = MIN(redValue, 255.0f);
	
	greenValue = MAX(greenValue, 0);
	greenValue = MIN(greenValue, 255.0f);
	
	blueValue = MAX(blueValue, 0);
	blueValue = MIN(blueValue, 255.0f);
	
	return [UIColor colorWithRed:redValue / 255.0f green:greenValue / 255.0f blue:blueValue / 255.0f alpha:1.0];
}

@end
