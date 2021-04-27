//
//  UIViewController+Operator.m
//  LYCategory
//
//  Created by Luo Yu on 2019/4/9.
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

#import "UIViewController+Operator.h"


@implementation UIViewController (Operator)

+ (UIViewController *)theTopViewController {
	return [[UIApplication sharedApplication].delegate.window.rootViewController getTopViewController];
}

- (UIViewController *)getTopViewController {
	
	if (self.presentedViewController) {
		return [self.presentedViewController getTopViewController];
	}
	
	if ([self isKindOfClass:[UINavigationController class]]) {
		return [((UINavigationController *)self).visibleViewController getTopViewController];
	}
	
	if ([self isKindOfClass:[UITabBarController class]]) {
		return [((UITabBarController *)self).selectedViewController getTopViewController];
	}
	
	if (self.isViewLoaded) {
		return self;
	}
	
	return nil;
}

- (void)observeNotifName:(NSString *)notifName selector:(SEL)selector {
	if (notifName == nil || [notifName isKindOfClass:[NSString class]] == NO || [notifName isEqualToString:@""]) {
		return;
	}
	[[NSNotificationCenter defaultCenter] addObserver:self selector:selector name:notifName object:nil];
}

- (void)removeObservingNotifName:(NSString *)notifName {
	if (notifName == nil || [notifName isKindOfClass:[NSString class]] == NO || [notifName isEqualToString:@""]) {
		return;
	}
	[[NSNotificationCenter defaultCenter] removeObserver:self name:notifName object:nil];
}

- (void)pushTo:(UIViewController *)viewController {
	if (self.navigationController != nil) {
		[self.navigationController pushViewController:viewController animated:YES];
	}
}

@end
