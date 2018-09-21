//
//  TextViewController.m
//  LYCategory
//
//  Created by Rick Luo on 12/18/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "TextViewController.h"
#import <LYCategory/LYCategory.h>

@interface TextViewController () <UITextFieldDelegate>

@end

@implementation TextViewController

#pragma mark - ACTIONS

- (IBAction)md5ButtonPressed:(UIButton *)sender {
	if ([tfInput isEmpty]) {
		lblInput.text = @"TEXT FIELD EMPTY";
	} else {
		lblInput.text = [tfInput.text md5];
		NSLog(@"%@", [tfInput.text md5]);
	}
}

- (IBAction)idnumberButtonPressed:(UIButton *)sender {
	
	lblInput.text = [tfInput.text isIDNumber] ? @"身份证号码正确" : @"身份证号码不正确";
}

- (IBAction)placeholderButtonPressed:(UIButton *)sender {
}

- (IBAction)checkMobileNumberButtonPressed:(UIButton *)sender {
	
	lblInput.text = [NSString stringWithFormat:@"%@ is %@", tfInput.text, [tfInput.text isPhoneNumber] ? @"valid" : @"invalid"];
}

- (IBAction)numberToChineseButtonPressed:(id)sender {
	lblInput.text = [NSString numberToChinese:tfInput.text.integerValue];
}

#pragma mark - INIT

- (id)init {
	self = [super initWithNibName:@"TextViewController" bundle:nil];
	if (self) {
		// CUSTOM INITIALIZATION
	}
	return self;
}

#pragma mark VIEW LIFE CYCLE

- (void)viewDidLoad {
	[super viewDidLoad];
	// DO ANY ADDITIONAL SETUP AFTER LOADING THE VIEW FROM ITS NIB.
	
	NSLog(@"%@", NSStringFromCGPoint(CENTER_P));
}

#pragma mark MEMORY MANAGEMENT

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// DISPOSE OF ANY RESOURCES THAT CAN BE RECREATED.
}

#pragma mark - GETTER & SETTER

#pragma mark - METHOD

#pragma mark PRIVATE METHOD

#pragma mark - DELEGATE

#pragma mark | - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
	
	lblInput.text = [NSString stringWithFormat:@"%@", tfInput.text];
	
	[textField isEmpty] ? lblInput.text = @"TEXT FIELD EMPTY" : 0;
	
	return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	
	return YES;
}

@end
