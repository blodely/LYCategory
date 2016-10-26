//
//  NSNumber+Random.h
//  LYCategory
//
//  Created by Rick Luo on 12/11/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Random)

+ (int)randomIntBetween:(int)lowerBound and:(int)upperBound;

+ (float)randomFloatBetween:(float)smallNumber and:(float)bigNumber;

@end
