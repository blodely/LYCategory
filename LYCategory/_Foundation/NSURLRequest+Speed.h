//
//  NSURLRequest+Speed.h
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLRequest (Speed)

+ (NSURLRequest *)requestWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);

@end
