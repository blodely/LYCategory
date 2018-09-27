//
//  InterfaceViewController.m
//  LYCategory_Example
//
//  Created by Rick Luo on 2018/7/2.
//  Copyright © 2018 Luo Yu. All rights reserved.
//

#import "InterfaceViewController.h"
#import <LYCategory/LYCategory.h>

@interface InterfaceViewController () {
	
	__weak IBOutlet UIView *vItem0;
	__weak IBOutlet UIView *vItem1;
	__weak IBOutlet UIButton *btnItem2;
}

@end

@implementation InterfaceViewController

// MARK: - ACTION

// MARK: - INIT

- (instancetype)init {
	if (self = [super initWithNibName:@"InterfaceViewController" bundle:[NSBundle mainBundle]]) {
		self.hidesBottomBarWhenPushed = YES;
	}
	return self;
}

// MARK: VIEW LIFE CYCLE

- (void)viewDidLoad {
    [super viewDidLoad];
	// DO ANY ADDITIONAL SETUP AFTER LOADING THE VIEW FROM ITS NIB.
	
	UIColor *sampleColor = self.view.tintColor;
	
	[vItem0 roundedCornerRadius:6];
	[vItem1 border1Px];
	
	[btnItem2 borderWithWidth:1 andColor:sampleColor];
	[btnItem2 roundedCornerRadius:6];
	
	{
		UIImageView *imageview = [[UIImageView alloc] init];
		imageview.frame = (CGRect){btnItem2.frame.origin.x, CGRectGetMaxY(btnItem2.frame) + 15, 100, 100};
		[self.view addSubview:imageview];
		imageview.image = [UIImage templateNamed:@"test-image"];
	}
}

// MARK: MEMORY MANAGEMENT

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// DISPOSE OF ANY RESOURCES THAT CAN BE RECREATED.
}

@end
