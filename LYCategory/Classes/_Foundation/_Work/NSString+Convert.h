//
//  NSString+Convert.h
//  LYCATEGORY
//
//  CREATED BY LUO YU ON 2016-11-04.
//  COPYRIGHT (C) 2016 LUO YU. ALL RIGHTS RESERVED.
//

#import <Foundation/Foundation.h>

@interface NSString (Convert)

- (NSString *)encodingURL;

- (NSString *)pinyin;

- (NSString *)indexLetter;

- (NSDate *)extractBirthdayFromIDNumber;

- (NSUInteger)extractAgeFromIDNumber;

- (NSString *)extractGenderFromIDNumber;

@end
