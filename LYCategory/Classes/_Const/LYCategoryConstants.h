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

typedef void(^LYCCompletion)(void);
typedef void(^LYCBoolean)(BOOL boolean);
typedef void(^LYCInteger)(NSInteger integer);
typedef void(^LYCUInteger)(NSUInteger uinteger);
typedef void(^LYCFloat)(float floatNumber);
typedef void(^LYCDouble)(double doubleNumber);
typedef void(^LYCNumber)(NSNumber *number);
typedef void(^LYCString)(NSString *string);
typedef void(^LYCDictionary)(NSDictionary *dictionary);
typedef void(^LYCArray)(NSArray *array);
typedef void(^LYCSet)(NSSet *set);
typedef void(^LYCObject)(id object);

// MARK: - KEY NAMES

FOUNDATION_EXPORT NSString *const LYK_TITLE;
FOUNDATION_EXPORT NSString *const LYK_SUBTITLE;
FOUNDATION_EXPORT NSString *const LYK_ICON;
FOUNDATION_EXPORT NSString *const LYK_KEY;
FOUNDATION_EXPORT NSString *const LYK_VAL;

@interface LYCategoryConstants : NSObject

@end
