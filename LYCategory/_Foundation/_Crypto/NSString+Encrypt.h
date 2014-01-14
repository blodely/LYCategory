//
//  NSString+Encrypt.h
//  LYCategory
//
//  Created by Rick Luo on 1/4/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encrypt)

- (NSString *)base64;

- (NSString *)md5;

- (NSString *)sha1;

@end
