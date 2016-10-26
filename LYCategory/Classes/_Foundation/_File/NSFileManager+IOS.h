//
//  NSFileManager+IOS.h
//  LYCategory
//
//  Created by Luo Yu on 4/8/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (IOS)

+ (BOOL)isFolderExistInDocuments:(NSString *)folderName;

// CHECK AND CREATE
+ (void)createFolderIfNotExistInDocuments:(NSString *)folderName;

@end
