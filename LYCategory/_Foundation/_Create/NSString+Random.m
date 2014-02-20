//
//  NSString+Random.m
//  LYCategory
//
//  Created by Luo Yu on 2014.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSString+Random.h"

@implementation NSString (Random)

+ (NSString *)uuid {
    CFUUIDRef uuidRef = CFUUIDCreate(NULL);
    CFStringRef uuidStringRef = CFUUIDCreateString(NULL, uuidRef);
    CFRelease(uuidRef);
    return (__bridge NSString *)uuidStringRef;
}


@end
