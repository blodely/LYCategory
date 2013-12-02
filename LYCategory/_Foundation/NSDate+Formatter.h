//
//  NSDate+Formatter.h
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Formatter)

#pragma mark DATE TO STRING

- (NSString *)stringWithFormat:(NSString *)fmtString;

- (NSString *)stringWithFormat:(NSString *)fmtString andTimezone:(NSString *)timezoneName;

#pragma mark UTC

- (NSNumber *)utcTimeIntervalSince1970;

@end
