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
	return [self init];
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
	
	[dsMenu addObjectsFromArray:@[@"Dates", @"Strings", @"UI", ]];
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
	return [NSString stringWithFormat:@"GROUP %d", section+1];
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
			[self.navigationController pushViewController:[[DateViewController alloc] init] animated:YES];
		} break;
		case 1: {
			[self.navigationController pushViewController:[[TextViewController alloc] init] animated:YES];
		} break;
		default: {
			
		} break;
	}
	
	[tableView deselectRowAtIndexPath:idp animated:YES];
}

#pragma mark - NOTIFICATION

@end
