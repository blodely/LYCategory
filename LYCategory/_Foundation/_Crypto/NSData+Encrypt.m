//
//  NSData+Encrypt.m
//  LYCategory
//
//  Created by Rick Luo on 1/11/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSData+Encrypt.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (Encrypt)

- (NSString *)md5 {
	unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5( self.bytes, (unsigned int)self.length, result ); // This is the md5 call
    return [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
			result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
			result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15]];
}

- (NSData *)MD5 {
	unsigned int outputLength = CC_MD5_DIGEST_LENGTH;
	unsigned char output[outputLength];
	CC_MD5(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithData:[NSMutableData dataWithBytes:output length:outputLength]];
}

- (NSData *)SHA1 {
	unsigned int outputLength = CC_SHA1_DIGEST_LENGTH;
	unsigned char output[outputLength];
	CC_SHA1(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithData:[NSMutableData dataWithBytes:output length:outputLength]];
}

- (NSData *)SHA256 {
	unsigned int outputLength = CC_SHA256_DIGEST_LENGTH;
	unsigned char output[outputLength];
	CC_SHA256(self.bytes, (unsigned int) self.length, output);
	return [NSMutableData dataWithBytes:output length:outputLength];
}

@end
