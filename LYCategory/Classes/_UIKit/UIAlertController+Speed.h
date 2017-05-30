//
//  UIAlertController+Speed.h
//  LYCategory
//
//  CREATED BY LUO YU ON 2017-03-17.
//  COPYRIGHT (C) 2017 LUO YU. ALL RIGHTS RESERVED.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Speed)

/**
 display an alert view controller with alertview style

 @param viewvc from view controller
 @param title title
 @param message message
 @param btnCancelTitle cancel button's title
 @param btnConfirmTitle confirm button's title
 @param btnConfirmBlock confirm action block
 */
+ (void)showAlertFromView:(UIViewController *)viewvc
				withTitle:(NSString *)title
			   andMessage:(NSString *)message
		cancelButtonTitle:(NSString *)btnCancelTitle
	   confirmButtonTitle:(NSString *)btnConfirmTitle
			confirmAction:(void (^)(void))btnConfirmBlock;

/**
 display an alert view controller with alertview style

 @param viewvc from view controller
 @param title title
 @param message message
 @param btnCancelTitle cancel button's title
 @param btnCancelBlock confirm button's title
 */
+ (void)showAlertFromView:(UIViewController *)viewvc
				withTitle:(NSString *)title
			   andMessage:(NSString *)message
		cancelButtonTitle:(NSString *)btnCancelTitle
			 cancelAction:(void (^)(void))btnCancelBlock;

@end
