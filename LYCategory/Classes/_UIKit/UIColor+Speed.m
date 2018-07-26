//
//  UIColor+Speed.m
//  LYCategory
//
//  CREATED BY LUO YU ON 26/10/2016.
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

+ (UIColor *)colorWithHex:(NSString *)hexstring andAlpha:(CGFloat)alpha {
	if (hexstring.length == 0) {
		return [UIColor clearColor];
	}
	
	if('#' != [hexstring characterAtIndex:0]) {
		hexstring = [NSString stringWithFormat:@"#%@", hexstring];
	}
	
	// RETURNING NO OBJECT ON WRONG ALPHA VALUES
	NSArray *validHexStringLengths = @[@7,];
	NSNumber *hexStringLengthNumber = [NSNumber numberWithUnsignedInteger:hexstring.length];
	if ([validHexStringLengths indexOfObject:hexStringLengthNumber] == NSNotFound) {
		return nil;
	}
	
	unsigned value = 0;
	NSScanner *hexValueScanner = nil;
	
	NSString *redHex = [NSString stringWithFormat:@"0x%@", [hexstring substringWithRange:NSMakeRange(1, 2)]];
	hexValueScanner = [NSScanner scannerWithString:redHex];
	[hexValueScanner scanHexInt:&value];
	unsigned redInt = value;
	hexValueScanner = nil;
	
	NSString *greenHex = [NSString stringWithFormat:@"0x%@", [hexstring substringWithRange:NSMakeRange(3, 2)]];
	hexValueScanner = [NSScanner scannerWithString:greenHex];
	[hexValueScanner scanHexInt:&value];
	unsigned greenInt = value;
	hexValueScanner = nil;
	
	NSString *blueHex = [NSString stringWithFormat:@"0x%@", [hexstring substringWithRange:NSMakeRange(5, 2)]];
	hexValueScanner = [NSScanner scannerWithString:blueHex];
	[hexValueScanner scanHexInt:&value];
	unsigned blueInt = value;
	hexValueScanner = nil;
	
	alpha = MIN(alpha, 1.0f);
	alpha = MAX(0, alpha);
	
	return [UIColor colorWithRed:redInt/255.0f green:greenInt/255.0f blue:blueInt/255.0f alpha:alpha];
}

@end
