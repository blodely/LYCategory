//
//  NSString+Input.h
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Input)

#pragma mark EMPTY

- (BOOL)isEmpty;

#pragma mark EMAIL

- (BOOL)isEmail;

#pragma mark ID

- (BOOL)isIDNumber;

#pragma mark SPACE

- (NSString *)trimStartSpace;

- (NSString *)trimSpace;

#pragma mark PHONE NUMBER

- (NSString *)phoneNumber;

- (BOOL)isPhoneNumber;

#pragma mark EMOJI

- (NSString *)replaceEmojiTextWithUnicode;

- (NSString *)replaceEmojiUnicodeWithText;

@end
