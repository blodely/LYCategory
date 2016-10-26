//
//  NSString+Size.h
//  LYCategory
//
//  Created by Luo Yu on 3/23/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@interface NSString (Size)

- (CGFloat)widthWithFont:(UIFont *)font;

- (CGFloat)widthWithSystemFontOfSize:(CGFloat)fontSize;

- (CGFloat)heightWithFont:(UIFont *)font andFixedWidth:(CGFloat)width;

@end
