//
//  NSString+Search.h
//  LYCategory
//
//  Created by Rick Luo on 12/29/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//	Email: indie.luo@gmail.com
//

#import <Foundation/Foundation.h>

@interface NSString (Search)

- (BOOL)caseInsensitive:(NSString *)searchString;

- (BOOL)caseSensitive:(NSString *)searchString;

@end
