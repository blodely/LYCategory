//
//	GeoViewController.m
//	LYCategory
//
//	Created by Luo Yu on 2022-01-31.
//	Email: indie.luo@gmail.com
//
//	The MIT License (MIT)
//
//	Copyright (c) 2013~2022 骆昱(Luo Yu). All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy of
//	this software and associated documentation files (the "Software"), to deal in
//	the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//	the Software, and to permit persons to whom the Software is furnished to do so,
//	subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "GeoViewController.h"
#import <LYCategory/LYCategory.h>
#import "GeoCoordinatesInputView.h"


@interface GeoViewController () {
	
	__weak GeoCoordinatesInputView *giBd;
	__weak GeoCoordinatesInputView *giGcj;
	__weak GeoCoordinatesInputView *giWgs;
	
}
@end

@implementation GeoViewController

- (instancetype)init {
	if (self = [super init]) {
	}
	return self;
}

- (void)loadView {
	[super loadView];
	
	{
		self.view.backgroundColor = [UIColor whiteColor];
		self.navigationItem.title = @"Geo demo";
	}
	
	{
		GeoCoordinatesInputView *view = [[GeoCoordinatesInputView alloc] init];
		view.translatesAutoresizingMaskIntoConstraints = NO;
		view.lblTitle.text = @"Coordinate BD";
		[self.view addSubview:view];
		giBd = view;
		
		[view.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
		[view.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
		[view.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
	}
	
	{
		GeoCoordinatesInputView *view = [[GeoCoordinatesInputView alloc] init];
		view.translatesAutoresizingMaskIntoConstraints = NO;
		view.lblTitle.text = @"Coordinate GCJ";
		[self.view addSubview:view];
		giGcj = view;
		
		[view.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
		[view.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
		[view.topAnchor constraintEqualToAnchor:giBd.bottomAnchor].active = YES;
	}
	
	{
		GeoCoordinatesInputView *view = [[GeoCoordinatesInputView alloc] init];
		view.translatesAutoresizingMaskIntoConstraints = NO;
		view.lblTitle.text = @"Coordinate WGS";
		[self.view addSubview:view];
		giWgs = view;
		
		[view.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
		[view.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
		[view.topAnchor constraintEqualToAnchor:giGcj.bottomAnchor].active = YES;
	}
}

- (void)calculateGPS {
	
//	[CLLocation convertFromWGS84ToGCJ02:<#(CLLocationCoordinate2D)#>];
}

@end
