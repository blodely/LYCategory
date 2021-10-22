//
//  MenuViewController.m
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "MenuViewController.h"
#import "DateViewController.h"
#import "TextViewController.h"
#import "InterfaceViewController.h"
#import "LYCategory.h"

@interface MenuViewController () <UITableViewDataSource, UITableViewDelegate> {
	
	NSMutableArray *dsMenu;
}

@end


static NSString *MenuCellIdentifier = @"MenuCellIdentifier";

@implementation MenuViewController

#pragma mark - ACTIONS

#pragma mark - INIT

- (id)init {
	self = [super initWithNibName:@"MenuViewController" bundle:nil];
	if (self) {
		// CUSTOM INITIALIZATION

		dsMenu = [NSMutableArray arrayWithCapacity:1];
	}
	return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if (self = [super initWithNibName:@"MenuViewController" bundle:nil]) {
	}
	return self;
}

#pragma mark VIEW LIFE CYCLE

- (void)loadView {
	[super loadView];
	
	[tbMenu registerClass:[UITableViewCell class] forCellReuseIdentifier:MenuCellIdentifier];
	
	self.navigationItem.title = @"LYCategory Demo";
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// DO ANY ADDITIONAL SETUP AFTER LOADING THE VIEW FROM ITS NIB.
	
	[dsMenu addObjectsFromArray:@[@"Dates", @"Strings", @"UI", @"Alert", ]];
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

#pragma mark | UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)idp {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MenuCellIdentifier forIndexPath:idp];
	cell.textLabel.text = dsMenu[idp.row];
	return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	return [NSString stringWithFormat:@"GROUP %@", @(section+1)];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [dsMenu count];
}

#pragma mark | UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)idp {
	
	switch (idp.row) {
		case 0: {
			[self pushTo:[[DateViewController alloc] init]];
		} break;
		case 1: {
			[self pushTo:[[TextViewController alloc] init]];
		} break;
		case 2: {
			[self pushTo:[[InterfaceViewController alloc] init]];
		} break;
		case 3: {
			[UIAlertController showAlertFromView:self withTitle:@"test" andMessage:@"test message" cancelButtonTitle:@"c a n c e l" confirmButtonTitle:@"c o n f i r m" confirmAction:^{
				NSLog(@"\n\n\n\nconfirmed\n\n\n\n");
			}];
		} break;
		default: {
			
		} break;
	}
	
	[tableView deselectRowAtIndexPath:idp animated:YES];
}

#pragma mark - NOTIFICATION

@end
