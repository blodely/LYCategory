//
//  NSString+Size.m
//  LYCategory
//
//  Created by Luo Yu on 3/23/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGFloat)widthWithFont:(UIFont *)font {
	return ceilf([[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font,}].size.width);
}

- (CGFloat)widthWithSystemFontOfSize:(CGFloat)fontSize {
	return ceilf([[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize],}].size.width);
}

@end
