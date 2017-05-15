//
//  NSNumber+Random.h
//  LYCategory
//
//  Created by Rick Luo on 12/11/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Random)

/**
 get random int value between two values

 @param lowerBound smaller one
 @param upperBound larger one
 @return result
 */
+ (int)randomIntBetween:(int)lowerBound and:(int)upperBound;

/**
 get random float value between two values

 @param smallNumber smaller one
 @param bigNumber larger one
 @return result
 */
+ (float)randomFloatBetween:(float)smallNumber and:(float)bigNumber;

@end
