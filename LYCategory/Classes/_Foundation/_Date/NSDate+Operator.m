//
//  NSDate+Operator.m
//  LYCategory
//
//  Created by Rick Luo on 11/30/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
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

- (BOOL)inFiveMinutes:(NSDate *)date {
	int delta = [self timeIntervalSince1970] - [date timeIntervalSince1970];
	return (delta >= 0 && delta < 300) || (delta < 0 && delta > -300);
}

@end
