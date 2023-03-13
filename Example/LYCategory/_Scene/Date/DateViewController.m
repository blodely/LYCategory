//
//  DateViewController.m
//  LYCategory
//
//  Created by Rick Luo on 12/9/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "DateViewController.h"
#import "LYCategory.h"

@interface DateViewController ()

@end

@implementation DateViewController

#pragma mark - ACTIONS

- (void)dateChanged:(id)sender {
	lblInterval.text = [NSString stringWithFormat:@"%@", [dpDate.date utcTimeIntervalSince1970]];
	lblUTC.text = [NSString stringWithFormat:@"%@", [dpDate.date stringWithFormat:@"yyyy-MM-dd HH:mm ZZZZ" andTimezone:@"UTC"]];
	
	lblTime1.text = [NSString stringWithFormat:@"Asia/Shanghai %@", [dpDate.date stringWithFormat:@"yyyy-MM-dd HH:mm" andTimezone:@"Asia/Shanghai"]];
	lblTime2.text = @"";
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
	if (self = [super initWithNibName:@"DateViewController" bundle:nil]) {
	}
	return self;
}

#pragma mark | VIEW LIFE CYCLE

- (void)viewDidLoad {
	[super viewDidLoad];
	// DO ANY ADDITIONAL SETUP AFTER LOADING THE VIEW FROM ITS NIB.
    
    NSLog(@"RANDOM DATE = %@", [NSDate randomDateBetweenYear:1984 toYear:2002]);
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
