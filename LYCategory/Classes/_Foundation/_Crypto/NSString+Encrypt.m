//
//  NSString+Encrypt.m
//  LYCategory
//
//  Created by Rick Luo on 1/4/14.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2014 骆昱(Luo Yu). All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy of
//	this software and associated documentation files (the "Software"), to deal in
//	the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//	the Software, and to permit persons to whom the Software is furnished to do so,
//	subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "NSString+Encrypt.h"
//#import "GTMBase64.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (Encrypt)

// MARK: - BASE64

- (NSString *)base64 {
	// REFACTORING
    return [self base64Encoded];
}

- (NSString *)base64Encoded {
	return [[self dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:(NSDataBase64EncodingOptions)0];
}

- (NSString *)base64Decoded {
	NSString *ret = [[NSString alloc] initWithData:[[NSData alloc] initWithBase64EncodedString:self options:(NSDataBase64DecodingOptions)0] encoding:NSUTF8StringEncoding];
	return ret;
}

// MARK: - DES

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

// MARK: - MD5

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

@end
