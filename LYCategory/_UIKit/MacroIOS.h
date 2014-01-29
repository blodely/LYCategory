//
//  MacroIOS.h
//  LYCategory
//
//  Created by Rick Luo on 1/23/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#ifndef LYCategory_MacroIOS_h
#define LYCategory_MacroIOS_h

#pragma mark - FRAME

#define DELTA7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? 0 : 20)

#define WIDTH 320

#define HEIGHT [UIScreen mainScreen].bounds.size.height

#pragma mark - OS VERSION

#define iOS7 ( ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) && ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) )

#pragma mark - MODEL DETECTION

#endif
