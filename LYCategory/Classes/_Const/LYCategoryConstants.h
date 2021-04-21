//
//  LYCategoryConstants.h
//  LYCategory
//
//  Created by Luo Yu on 2017-07-18.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2017 骆昱(Luo Yu). All rights reserved.
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
#import <CoreGraphics/CGBase.h>

// MARK: - VALUES

FOUNDATION_EXPORT CGFloat const ANIMATE;
FOUNDATION_EXPORT float const GOLDEN_RATIO;

// MARK: - TIME ZONE

FOUNDATION_EXPORT NSString *const TZUTC;
FOUNDATION_EXPORT NSString *const TZShanghai;

// MARK: - NOTIFICATION

FOUNDATION_EXPORT NSString *const LYC_NOTIF_APP_WILL_RESIGN_ACTIVE;
FOUNDATION_EXPORT NSString *const LYC_NOTIF_APP_DID_ENTER_BACKGROUND;
FOUNDATION_EXPORT NSString *const LYC_NOTIF_APP_WILL_ENTER_FOREGROUND;
FOUNDATION_EXPORT NSString *const LYC_NOTIF_APP_DID_BECOME_ACTIVE;
FOUNDATION_EXPORT NSString *const LYC_NOTIF_APP_WILL_TERMINATE;

// MARK: - BLOCKS

/**
 Block with parameter void.
 */
typedef void(^LYCCompletion)(void);

/**
 Block with parameter boolean value.

 @param boolean boolean value
 */
typedef void(^LYCBoolean)(BOOL boolean);

/**
 Block with parameter integer value.

 @param integer integer value
 */
typedef void(^LYCInteger)(NSInteger integer);

/**
 Block with parameter unsigned integer value.

 @param uinteger unsigned integer value
 */
typedef void(^LYCUInteger)(NSUInteger uinteger);

/**
 Block with parameter float value.

 @param floatNumber float value
 */
typedef void(^LYCFloat)(float floatNumber);

/**
 Block with parameter double value.

 @param doubleNumber double value
 */
typedef void(^LYCDouble)(double doubleNumber);

/**
 Block with parameter NSNumber object.

 @param number number object
 */
typedef void(^LYCNumber)(NSNumber *number);

/**
 Block with parameter NSString object.

 @param string string object
 */
typedef void(^LYCString)(NSString *string);

/**
 Block with parameter NSDictionary object.

 @param dictionary dictionary object
 */
typedef void(^LYCDictionary)(NSDictionary *dictionary);

/**
 Block with parameter NSArray object.

 @param array array object
 */
typedef void(^LYCArray)(NSArray *array);

/**
 Block with parameter NSSet object.

 @param set set object
 */
typedef void(^LYCSet)(NSSet *set);

/**
 Block with parameter NSDate object.
 
 @param date date object
 */
typedef void(^LYCDate)(NSDate *date);

/**
 Block with parameter NSError object.
 
 @param error error object
 */
typedef void(^LYCError)(NSError *error);

/**
 Block with parameter id object.

 @param object any object
 */
typedef void(^LYCObject)(id object);

/**
 Block with parameter CGSize value.

 @param size size value
 */
typedef void(^LYCSize)(CGSize size);

/**
 Block with parameter CGRect value.

 @param rect rectangle value
 */
typedef void(^LYCRectangle)(CGRect rect);

// MARK: - KEY NAMES

FOUNDATION_EXPORT NSString *const LYK_TITLE;
FOUNDATION_EXPORT NSString *const LYK_SUBTITLE;
FOUNDATION_EXPORT NSString *const LYK_ICON;
FOUNDATION_EXPORT NSString *const LYK_KEY;
FOUNDATION_EXPORT NSString *const LYK_VAL;
FOUNDATION_EXPORT NSString *const LYK_TOGGLE;

@interface LYCategoryConstants : NSObject

@end
