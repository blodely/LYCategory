//
//  NSData+Encrypt.h
//  LYCategory
//
//  Created by Rick Luo on 1/11/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Encrypt)

- (NSString *)md5;

- (NSData *)MD5;

- (NSData *)SHA1;

- (NSData *)SHA256;

@end
