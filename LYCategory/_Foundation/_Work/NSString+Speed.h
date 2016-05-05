//
//  NSString+Speed.h
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Speed)

- (BOOL)isEqualWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1, 2);

- (BOOL)isOneOfThem:(NSArray *)strings;

- (NSString *)removeHTMLtags;

@end
