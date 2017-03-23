//
//  UIAlertController+Speed.h
//  LYCategory
//
//  CREATED BY LUO YU ON 2017-03-17.
//  COPYRIGHT (C) 2017 LUO YU. ALL RIGHTS RESERVED.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Speed)

+ (void)showAlertFromView:(UIViewController *)viewvc
				withTitle:(NSString *)title
			   andMessage:(NSString *)message
		cancelButtonTitle:(NSString *)btnCancelTitle
	   confirmButtonTitle:(NSString *)btnConfirmTitle
			confirmAction:(void (^)(void))btnConfirmBlock;

+ (void)showAlertFromView:(UIViewController *)viewvc
				withTitle:(NSString *)title
			   andMessage:(NSString *)message
		cancelButtonTitle:(NSString *)btnCancelTitle
			 cancelAction:(void (^)(void))btnCancelBlock;

@end
