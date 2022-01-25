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
	__weak IBOutlet UILabel *lblItem3;
	__weak IBOutlet UIImageView *ivScreenshot;
	
	__strong LYCCollectionCell blockCollectionCell;
}

@end

@implementation InterfaceViewController

// MARK: - ACTION

- (IBAction)button2Pressed:(id)sender {
	ivScreenshot.image = [self.view imageShot];
	UIImageWriteToSavedPhotosAlbum([self.view imageShot], nil, nil, nil);
}

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
	
	if (@available(iOS 11.0, *)) {
		lblItem3.text = [NSString stringWithFormat:@"Height %@, safe height %@",
						 @(HEIGHT), @(HEIGHT_SAFE)
						 ];
	} else {
		lblItem3.text = [NSString stringWithFormat:@"Height %@, no safe area (iOS lower than 11.0)", @(HEIGHT)];
	}
	
	{
		UIImageView *imageview = [[UIImageView alloc] init];
		imageview.frame = (CGRect){lblItem3.frame.origin.x, CGRectGetMaxY(lblItem3.frame) + 15, 100, 100};
		[self.view addSubview:imageview];
		imageview.image = [UIImage templateNamed:@"test-image"];
	}
	
	[ivScreenshot border1Px];
	
	{
		UILabel *view1 = [[UILabel alloc] init];
		UILabel *view2 = [[UILabel alloc] init];
		
		view1.backgroundColor = [UIColor colorWithHex:@"#e3e3e3" andAlpha:0.5];
		view2.backgroundColor = [UIColor colorWithHex:@"#d3d3d3" andAlpha:0.5];
		view1.textColor = view2.textColor = [UIColor blackColor];
		view1.font = view2.font = [UIFont systemFontOfSize:12];
		
		view1.text = @"autolayout view 1";
		view2.text = @"autolayout view 2";
		
		[view1 border1Px];
		[view2 border1Px];
		
		[self.view addSubview:view1];
		[self.view addSubview:view2];
		
		{
			view1.translatesAutoresizingMaskIntoConstraints = NO;
			[view1.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:16].active = YES;
			[view1.topAnchor constraintEqualToAnchor:ivScreenshot.bottomAnchor constant:16].active = YES;
			[view1.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-16].active = YES;
			[view1.heightAnchor constraintEqualToConstant:88].active = YES;
		}
		
		// TEST API EFFECT:
		[view2 makeEdgeEqualTo:view1 insets:UIEdgeInsetsMake(10, 100, -10, -10)];
	}
}

// MARK: MEMORY MANAGEMENT

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// DISPOSE OF ANY RESOURCES THAT CAN BE RECREATED.
}

@end
