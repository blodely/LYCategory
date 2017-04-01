//
//  NSString+Encrypt.m
//  LYCategory
//
//  Created by Rick Luo on 1/4/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSString+Encrypt.h"
//#import "GTMBase64.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (Encrypt)

- (NSString *)base64 {
	
	// From AFNetworking
	
	NSData *data = [NSData dataWithBytes:[self UTF8String] length:[self lengthOfBytesUsingEncoding:NSUTF8StringEncoding]];
    NSUInteger length = [data length];
    NSMutableData *mutableData = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
	
    uint8_t *input = (uint8_t *)[data bytes];
    uint8_t *output = (uint8_t *)[mutableData mutableBytes];
	
    for (NSUInteger i = 0; i < length; i += 3) {
        NSUInteger value = 0;
        for (NSUInteger j = i; j < (i + 3); j++) {
            value <<= 8;
            if (j < length) {
                value |= (0xFF & input[j]);
            }
        }
		
        static uint8_t const kBase64EncodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
		
        NSUInteger idx = (i / 3) * 4;
        output[idx + 0] = kBase64EncodingTable[(value >> 18) & 0x3F];
        output[idx + 1] = kBase64EncodingTable[(value >> 12) & 0x3F];
        output[idx + 2] = (i + 1) < length ? kBase64EncodingTable[(value >> 6)  & 0x3F] : '=';
        output[idx + 3] = (i + 2) < length ? kBase64EncodingTable[(value >> 0)  & 0x3F] : '=';
    }
	
    return [[NSString alloc] initWithData:mutableData encoding:NSASCIIStringEncoding];
}

static Byte iv[] = {0x12,0x34,0x56,0x78,0x90,0xAB,0xCD,0xEF};

- (NSString*)encryptUseDESS:(NSString*)plainText key:(NSString*)key {
	
	NSString * ciphertext = nil;
	const char * textBytes = [plainText UTF8String];
	NSUInteger dataLength = strlen(textBytes);
	unsigned char buffer[1024];
	memset(buffer, 0, sizeof(char));
	size_t numBytesEncrypted = 0;
	CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt, kCCAlgorithmDES,
										kCCOptionPKCS7Padding,
										[key UTF8String], kCCKeySizeDES,
										iv,
										textBytes, dataLength,
										buffer,1024,
										&numBytesEncrypted);
	
	if(cryptStatus ==kCCSuccess) {
		NSData *data = [NSData dataWithBytes:buffer length:(NSUInteger)numBytesEncrypted];
		ciphertext = [data base64EncodedStringWithOptions:0];
	}
	return ciphertext;
	
}

- (NSString *)decryptUseDES:(NSString *)cipherText key:(NSString *)key {
	
	NSData *cipherData = [[NSData alloc] initWithBase64EncodedString:cipherText options:0];
	
	unsigned char buffer[1024*100];
	memset(buffer, 0, sizeof(char));
	size_t numBytesDecrypted = 0;
	Byte iv[] = {0x12,0x34,0x56,0x78,0x90,0xAB,0xCD,0xEF};
	CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
										kCCAlgorithmDES,
										kCCOptionPKCS7Padding,
										[key UTF8String],
										kCCKeySizeDES,
										iv,
										[cipherData bytes],
										[cipherData length],
										buffer,
										1024*100,
										&numBytesDecrypted);
	
	NSString *plainText = nil;
	if(cryptStatus ==kCCSuccess) {
		NSData *data = [NSData dataWithBytes:buffer length:(NSUInteger)numBytesDecrypted];
		plainText = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
	}
	return plainText;
}

- (NSString *)md5 {
	
	const char *cstr = [self UTF8String];
	
    unsigned char digest[16];
	
    CC_MD5(cstr, (unsigned int)strlen(cstr), digest);
	
    return [NSString stringWithFormat:
			@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
			digest[0], digest[1], digest[2], digest[3], digest[4], digest[5], digest[6], digest[7],
			digest[8], digest[9], digest[10], digest[11], digest[12], digest[13], digest[14], digest[15]];
}

- (NSString *)md5Lowercase16 {
	return [[[[self md5] substringToIndex:24] substringFromIndex:8] lowercaseString];
}

- (NSString *)sha1 {
	const char *cstr = [self cStringUsingEncoding:NSUTF8StringEncoding];
	NSData *data = [NSData dataWithBytes:cstr length:self.length];
	
	uint8_t digest[CC_SHA1_DIGEST_LENGTH];
	
	CC_SHA1(data.bytes, (unsigned int)data.length, digest);
	
	NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
	
	for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
		[output appendFormat:@"%02x", digest[i]];
	}
	
	return output;
}

- (NSString *)md5Uppercase32 {
	
	const char *cStr = [self UTF8String];
	unsigned char result[32];
	
	CC_MD5(cStr, (unsigned int)strlen(cStr), result);
	return [NSString stringWithFormat:
			@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
			result[0],result[1],result[2],result[3],
			result[4],result[5],result[6],result[7],
			result[8],result[9],result[10],result[11],
			result[12],result[13],result[14],result[15]];
}

@end
