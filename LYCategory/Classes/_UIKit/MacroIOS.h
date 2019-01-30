//
//	MacroIOS.h
//  LYCategory
//
//  CREATED BY LUO YU ON 2014-01-23.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2014 骆昱(Luo Yu). All rights reserved.
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

#ifndef LYCategory_MacroIOS_h
#define LYCategory_MacroIOS_h

// MARK: - FRAME

#define DELTA7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? 0 : 20)

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

// ONLY AVAILBLE AT iOS 11.0+
#define SAFE_TOP MAX(UIApplication.sharedApplication.keyWindow.safeAreaInsets.top, 20)
#define SAFE_BOTTOM UIApplication.sharedApplication.keyWindow.safeAreaInsets.bottom

#define HEIGHT_SAFE (HEIGHT - SAFE_TOP - SAFE_BOTTOM)

#define SCALE [UIScreen mainScreen].scale

#define MAX_LENGTH MAX(WIDTH, HEIGHT)

#define CENTER_X WIDTH * 0.5

#define CENTER_P CGPointMake(HEIGHT * 0.5, CENTER_X)

// MARK: - MODEL DETECTION

#define iPhone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define iPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define iPod ( [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] )

// MARK: PYSC SCREEN SIZE

#define iPhone5 ( iPhone && ( fabs( (double)HEIGHT - (double)568 ) < DBL_EPSILON ) )

#define iPhone6 ( iPhone && MAX_LENGTH == 667.0 )

#define iPhone6P ( iPhone && MAX_LENGTH == 736.0 )


#endif
