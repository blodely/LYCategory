//
//  UIAlertController+Speed.m
//  LYCategory
//
//  CREATED BY LUO YU ON 2017-03-17.
//  COPYRIGHT (C) 2017 LUO YU. ALL RIGHTS RESERVED.
//

#import "UIAlertController+Speed.h"

@implementation UIAlertController (Speed)

+ (void)showAlertFromView:(UIViewController *)viewvc
				withTitle:(NSString *)title
			   andMessage:(NSString *)message
		cancelButtonTitle:(NSString *)btnCancelTitle
	   confirmButtonTitle:(NSString *)btnConfirmTitle
			confirmAction:(void (^)(void))btnConfirmBlock {
	
	// CREATION
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
	
	// CANCEL BUTTON
	[alert addAction:[UIAlertAction actionWithTitle:btnCancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
		
	}]];
	
	// CONFIRM BUTTON
	[alert addAction:[UIAlertAction actionWithTitle:btnConfirmTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
		btnConfirmBlock();
	}]];
	
	// SHOW
	[viewvc presentViewController:alert animated:YES completion:^{}];
}

+ (void)showAlertFromView:(UIViewController *)viewvc
				withTitle:(NSString *)title
			   andMessage:(NSString *)message
		cancelButtonTitle:(NSString *)btnCancelTitle
			 cancelAction:(void (^)(void))btnCancelBlock {
	
	// CREATION
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
	
	// CANCEL BUTTON
	[alert addAction:[UIAlertAction actionWithTitle:btnCancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
		btnCancelBlock();
	}]];
	
	// SHOW
	[viewvc presentViewController:alert animated:YES completion:^{}];
}

@end
