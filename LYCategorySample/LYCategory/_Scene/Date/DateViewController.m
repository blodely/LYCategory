//
//  DateViewController.m
//  LYCategory
//
//  Created by Rick Luo on 12/9/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

#pragma mark - ACTIONS

- (void)dateChanged:(id)sender {
	lblInterval.text = [NSString stringWithFormat:@"%@", [dpDate.date utcTimeIntervalSince1970]];
	lblUTC.text = [NSString stringWithFormat:@"%@", [dpDate.date stringWithFormat:@"yyyy-MM-dd HH:mm ZZZZ" andTimezone:@"UTC"]];
}

#pragma mark - INIT

- (id)init {
	self = [super initWithNibName:@"DateViewController" bundle:nil];
	if (self) {
		// CUSTOM INITIALIZATION
	}
	return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	return [self init];
}

#pragma mark | VIEW LIFE CYCLE

- (void)viewDidLoad {
	[super viewDidLoad];
	// DO ANY ADDITIONAL SETUP AFTER LOADING THE VIEW FROM ITS NIB.
}

#pragma mark | MEMORY MANAGEMENT

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// DISPOSE OF ANY RESOURCES THAT CAN BE RECREATED.
}

#pragma mark - GETTER & SETTER

#pragma mark - METHOD

#pragma mark | PRIVATE METHOD

#pragma mark - DELEGATE

#pragma mark - NOTIFICATION

#pragma mark - OVERWRITE

#pragma mark TOUCHES

@end
