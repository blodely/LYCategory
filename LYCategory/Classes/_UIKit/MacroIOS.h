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

#define SCALE [UIScreen mainScreen].scale

#define MAX_LENGTH MAX(WIDTH, HEIGHT)

#define CENTER_X WIDTH/2

#define CENTER_P CGPointMake(HEIGHT/2, CENTER_X)

// MARK: BLOCKS
typedef void(^LYCCompletion)(void);

// MARK: - MODEL DETECTION

#define iPhone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define iPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define iPod ( [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] )

// MARK: PYSC SCREEN SIZE

#define iPhone5 ( iPhone && ( fabs( (double)HEIGHT - (double)568 ) < DBL_EPSILON ) )

#define iPhone6 ( iPhone && MAX_LENGTH == 667.0 )

#define iPhone6P ( iPhone && MAX_LENGTH == 736.0 )


#endif
