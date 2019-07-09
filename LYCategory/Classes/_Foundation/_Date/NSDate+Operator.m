//
//  NSDate+Operator.m
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

#import "NSDate+Operator.h"

@implementation NSDate (Operator)

- (BOOL)isToday {
	
	unsigned flag = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
	
	NSDateComponents *today = [[NSCalendar currentCalendar] components:flag fromDate:[NSDate date]];
	NSDateComponents *comp = [[NSCalendar currentCalendar] components:flag fromDate:self];
	
	return comp.year == today.year && comp.month == today.month && comp.day == today.day;
}

- (BOOL)isYesterday {
	return [self isSameDayIgnoringTimeWith:[[NSDate date] yesterday]];
}

- (BOOL)isTheDayBeforeYesterday {
	return [self isSameDayIgnoringTimeWith:[[[NSDate date] yesterday] yesterday]];
}

- (BOOL)isSameDayIgnoringTimeWith:(NSDate *)date {
	
	NSDateComponents *current = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfYear |  NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal) fromDate:self];
	NSDateComponents *comp = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfYear | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal) fromDate:date];
	
	return ((current.year == comp.year) && (current.month == comp.month) && (current.day == comp.day));
}

- (NSDate *)yesterday {
	NSDateComponents *comp = [[NSDateComponents alloc] init];
	comp.day = -1;
	return [[NSCalendar currentCalendar] dateByAddingComponents:comp toDate:self options:0];
}

- (BOOL)isSameDayWith:(NSDate *)date {
	
	unsigned flag = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
	
	NSDateComponents *compSelf = [[NSCalendar currentCalendar] components:flag fromDate:self];
	NSDateComponents *compOther = [[NSCalendar currentCalendar] components:flag fromDate:date];
	
	return [compSelf day] == [compOther day] && [compSelf month] == [compOther month] && [compSelf year] == [compOther year];
}

- (BOOL)isSameWeekWith:(NSDate *)date {
	
	unsigned flag = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitWeekOfMonth;
	
	NSDateComponents *compSelf = [[NSCalendar currentCalendar] components:flag fromDate:self];
	NSDateComponents *compOther = [[NSCalendar currentCalendar] components:flag fromDate:date];
	
	return [compSelf weekOfMonth] == [compOther weekOfMonth] && [compSelf month] == [compOther month] && [compSelf year] == [compOther year];
}

- (BOOL)isSameMonthWith:(NSDate *)date {
	
	unsigned flag = NSCalendarUnitYear | NSCalendarUnitMonth;
	
	NSDateComponents *compSelf  = [[NSCalendar currentCalendar] components:flag fromDate:self];
	NSDateComponents *compOther = [[NSCalendar currentCalendar] components:flag fromDate:date];
	
	return [compSelf year] == [compOther year] && [compSelf month] == [compOther month];
	
}

- (BOOL)isSameYearWith:(NSDate *)date {
	
	unsigned flag = NSCalendarUnitYear;
	
	NSDateComponents *compSelf  = [[NSCalendar currentCalendar] components:flag fromDate:self];
	NSDateComponents *compOther = [[NSCalendar currentCalendar] components:flag fromDate:date];
	
	return [compSelf year] == [compOther year];
}

- (BOOL)isSameHourWith:(NSDate *)date {
	unsigned flag = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour;
	
	NSDateComponents *compSelf  = [[NSCalendar currentCalendar] components:flag fromDate:self];
	NSDateComponents *compOther = [[NSCalendar currentCalendar] components:flag fromDate:date];
	
	return [compSelf year] == [compOther year] && [compSelf month] == [compOther month] && [compSelf day] == [compOther day] && [compSelf hour] == [compOther hour];
}

- (BOOL)inFiveMinutes:(NSDate *)date {
	double delta = [self timeIntervalSince1970] - [date timeIntervalSince1970];
	return fabs(delta) < 5 * 60.0f;
}

- (BOOL)inAnHour:(NSDate *)date {
	double delta = [self timeIntervalSince1970] - [date timeIntervalSince1970];
	return fabs(delta) < 60 * 60.0f;
}

@end
