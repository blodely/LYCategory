//
//  NSString+Date.h
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Date)

- (NSDate *)dateWithFormat:(NSString *)fmtString;

- (NSDate *)dateWithFormat:(NSString *)fmtString andTimezone:(NSString *)timezoneName;

@end
