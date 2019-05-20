//
//	UITableView+Fix.m
//	LYCategory
//
//	Created by Luo Yu on 2019/5/20.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2019 骆昱(Luo Yu). All rights reserved.
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

#import "UITableView+Fix.h"

@implementation UITableView (Fix)

- (void)reloadRowIgnoredExceptionsAtIndexPath:(NSIndexPath *)idp withRowAnimation:(UITableViewRowAnimation)animation {
	dispatch_async(dispatch_get_main_queue(), ^{
		// ONLY ON MAIN THREAD
		
		NSUInteger section = [self numberOfSections];
		if (section == 0 || idp.section >= section) {
			return;
		}
		
		NSUInteger row = [self numberOfRowsInSection:idp.section];
		if (row == 0 || idp.row >= row) {
			return;
		}
		
		@try {
			if ([[self indexPathsForVisibleRows] indexOfObject:idp] == NSNotFound) {
				// TARGET CELL NOT VISIBLE
				// PASS
				// return;
			} else {
				[self reloadRowsAtIndexPaths:@[idp,] withRowAnimation:animation];
			}
		} @catch (NSException *exception) {
			// PASS
			// return;
		} @finally {
			// PASS
		}
	});
}

@end
