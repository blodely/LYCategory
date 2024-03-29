//
//  NSDate+Operator.h
//  LYCategory
//
//  Created by Rick Luo on 11/30/13.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2013 骆昱(Luo Yu). All rights reserved.
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

#import <Foundation/Foundation.h>

@interface NSDate (Operator)

/**
 is date today.

 @return bool value
 */
- (BOOL)isToday;

/**
 is date yesterday.

 @return bool value
 */
- (BOOL)isYesterday;

/**
 is date the day before yesterday.

 @return bool value
 */
- (BOOL)isTheDayBeforeYesterday;

- (BOOL)isSameDayIgnoringTimeWith:(NSDate *)date;

/**
 get yesterday object

 @return date object
 */
- (NSDate *)yesterday;

/**
 is date same day with target date object.

 @param date date to compare
 @return bool value
 */
- (BOOL)isSameDayWith:(NSDate *)date;

/**
 is date same week with current date object.

 @param date date to compare
 @return bool value
 */
- (BOOL)isSameWeekWith:(NSDate *)date;

- (BOOL)isSameMonthWith:(NSDate *)date;

- (BOOL)isSameYearWith:(NSDate *)date;

- (BOOL)isSameHourWith:(NSDate *)date;

- (BOOL)inFiveMinutes:(NSDate *)date;

- (BOOL)inAnHour:(NSDate *)date;

/// Treat as birthday date, get current age number.
- (NSInteger)getCurrentAgeForBirthdayDate;

@end
