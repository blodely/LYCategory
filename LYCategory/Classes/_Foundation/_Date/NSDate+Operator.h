//
//  NSDate+Operator.h
//  LYCategory
//
//  Created by Rick Luo on 11/30/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Operator)

- (BOOL)isToday;

- (BOOL)isYesterday;

- (BOOL)isTheDayBeforeYesterday;

- (BOOL)isSameDayIgnoringTimeWith:(NSDate *)date;

- (NSDate *)yesterday;

- (BOOL)isSameDayWith:(NSDate *)date;

- (BOOL)isSameWeekWith:(NSDate *)date;

- (BOOL)isSameMonthWith:(NSDate *)date;

- (BOOL)isSameYearWith:(NSDate *)date;

- (BOOL)inFiveMinutes:(NSDate *)date;

@end
