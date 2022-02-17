//
//  UIViewController+Operator.h
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

#import <UIKit/UIKit.h>


@interface UIViewController (Operator)

/**
 GET APP'S TOP VIEW CONTROLLER

 @return view controller instance if it exist
 */
+ (UIViewController *)theTopViewController;

- (UIViewController *)getTopViewController;

/**
 Add self notification center observing

 @param notifName The name of the notification for which to register the observer; that is, only notifications with this name are delivered to the observer.
 @param selector Selector that specifies the message the receiver sends observer to notify it of the notification posting. The method specified by aSelector must have one and only one argument (an instance of NSNotification).
 */
- (void)observeNotifName:(NSString *)notifName selector:(SEL)selector;

/**
 Removes matching entries from the notification center's dispatch table.

 @param notifName Name of the notification to remove from dispatch table. Specify a notification name to remove only entries that specify this notification name. When nil, the receiver does not use notification names as criteria for removal.
 */
- (void)removeObservingNotifName:(NSString *)notifName;

/**
 Push to view controller if possible
 
 @param viewController view controller to push
 */
- (void)pushTo:(UIViewController *)viewController;

/// get app's current top view controller, and try to make push-to action
/// @param viewController view controller
+ (void)topViewControllerMakePush:(UIViewController *)viewController;

@end
