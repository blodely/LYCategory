//
//	UIDevice+Speed.h
//  LYCategory
//
//  Created by Luo Yu on 2018/04/17.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2019 骆昱(Luo Yu). All rights reserved.
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

#import <UIKit/UIKit.h>


FOUNDATION_EXPORT NSString *const LYCN_iPhone_Xs;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_XsMax;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_XR;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_X;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_8;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_8Plus;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_7;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_7Plus;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_SE;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_6;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_6Plus;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_5s;
FOUNDATION_EXPORT NSString *const LYCN_iPhone_5;


@interface UIDevice (Speed)

/**
 get phone identifier, e.g. iPhone11,2

 @return identifier string
 */
+ (NSString *)phoneIdentifier;

@end
