//
//  NSFileManager+IOS.m
//  LYCategory
//
//  Created by Luo Yu on 4/8/14.
//  Copyright (c) 2014 Luo Yu. All rights reserved.
//

#import "NSFileManager+IOS.h"

@implementation NSFileManager (IOS)

- (BOOL)isFolderExistInDocuments:(NSString *)folderName {
	
	NSError *error;
	NSString *path = [NSHomeDirectory() stringByAppendingFormat:@"/Documents/%@", folderName];
	BOOL isDir;
	BOOL exists = [[NSFileManager defaultManager] fileExistsAtPath:path isDirectory:&isDir];
	return exists && isDir;
}

@end
