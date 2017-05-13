//
//  NSNumber+Date.h
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Date)

#pragma mark UTC TIME

/**
 get date object from number object of utc time interval value

 @return date object
 */
- (NSDate *)date;

@end
