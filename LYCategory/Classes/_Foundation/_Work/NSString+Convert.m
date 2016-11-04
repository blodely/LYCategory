//
//  NSString+Convert.m
//  LYCATEGORY
//
//  CREATED BY LUO YU ON 2016-11-04.
//  COPYRIGHT (C) 2016 LUO YU. ALL RIGHTS RESERVED.
//

#import "NSString+Convert.h"

@implementation NSString (Convert)

- (NSString *)encodingURL {
	return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
}

@end
