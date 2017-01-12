//
//  MacroIOS.h
//  LYCategory
//
//  Created by Rick Luo on 1/23/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#ifndef LYCategory_MacroIOS_h
#define LYCategory_MacroIOS_h

// MARK: - FRAME

#define DELTA7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? 0 : 20)

#define WIDTH [UIScreen mainScreen].bounds.size.width

#define HEIGHT [UIScreen mainScreen].bounds.size.height

#define MAX_LENGTH MAX(WIDTH, HEIGHT)

#define CENTER_X WIDTH/2

#define CENTER_P CGPointMake(HEIGHT/2, CENTER_X)

// MARK: - OS VERSION

#define iOS8 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 9.0) )

#define iOS7 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) )

#define iOS6 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 7.0) )

// MARK: - MODEL DETECTION

#define iPhone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define iPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define iPhone5 ( iPhone && ( fabs( (double)HEIGHT - (double)568 ) < DBL_EPSILON ) )

#define iPhone6 ( iPhone && MAX_LENGTH == 667.0 )

#define iPhone6P ( iPhone && MAX_LENGTH == 736.0 )

#define iPod ( [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] )

#endif
