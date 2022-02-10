//
//	GeoCoordinatesInputView.m
//	LYCategory
//
//	Created by Luo Yu on 2022-02-10.
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

#import "GeoCoordinatesInputView.h"
#import <LYCategory/LYCategory.h>


@interface GeoCoordinatesInputView () {
	
	__weak UILabel *lblLat;
	__weak UILabel *lblLon;
	
	__weak UIButton *btnCpLat;
	__weak UIButton *btnCpLong;
}
@end

@implementation GeoCoordinatesInputView

- (instancetype)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		[self initial];
	}
	return self;
}

- (void)initial {
	
	{
		// MARK: TITLE LABEL
		UILabel *view = [[UILabel alloc] init];
		view.translatesAutoresizingMaskIntoConstraints = NO;
		view.font = [UIFont boldSystemFontOfSize:14];
		view.textColor = [UIColor darkTextColor];
		[self addSubview:view];
		_lblTitle = view;
		
		[view.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:16].active = YES;
		[view.topAnchor constraintEqualToAnchor:self.topAnchor constant:8].active = YES;
	}
	
	{
		// MARK: LATITUDE BLOCK
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.titleLabel.font = [UIFont systemFontOfSize:10];
			[view setTitle:@"cp" forState:UIControlStateNormal];
			[view roundedCornerRadius:3];
			[view border1Px];
			[self addSubview:view];
			btnCpLat = view;
			
			[view.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-16].active = YES;
			[view.topAnchor constraintEqualToAnchor:_lblTitle.bottomAnchor constant:8].active = YES;
			[view.widthAnchor constraintEqualToConstant:36].active = YES;
			[view.heightAnchor constraintEqualToAnchor:view.widthAnchor].active = YES;
		}
		
		{
			UILabel *view = [[UILabel alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.font = [UIFont systemFontOfSize:[UIFont smallSystemFontSize]];
			view.textColor = [UIColor darkTextColor];
			view.text = @"Latitude";
			[self addSubview:view];
			lblLat = view;
			
			[view.leadingAnchor constraintEqualToAnchor:_lblTitle.leadingAnchor].active = YES;
			[view.centerYAnchor constraintEqualToAnchor:btnCpLat.centerYAnchor].active = YES;
			[view.widthAnchor constraintEqualToConstant:60].active = YES;
		}
		
		{
			UITextField *view = [[UITextField alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.keyboardType = UIKeyboardTypeDecimalPad;
			[view roundedCornerRadius:3];
			[view border1Px];
			[self addSubview:view];
			_tfLatitude = view;
			
			[view.leadingAnchor constraintEqualToAnchor:lblLat.trailingAnchor constant:8].active = YES;
			[view.trailingAnchor constraintEqualToAnchor:btnCpLat.leadingAnchor constant:-8].active = YES;
			[view.topAnchor constraintEqualToAnchor:btnCpLat.topAnchor].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:btnCpLat.bottomAnchor].active = YES;
		}
	}
	
	{
		// MARK: LONGITUDE BLOCK
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.titleLabel.font = [UIFont systemFontOfSize:10];
			[view setTitle:@"cp" forState:UIControlStateNormal];
			[view roundedCornerRadius:3];
			[view border1Px];
			[self addSubview:view];
			btnCpLong = view;
			
			[view.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-16].active = YES;
			[view.topAnchor constraintEqualToAnchor:btnCpLat.bottomAnchor constant:8].active = YES;
			[view.widthAnchor constraintEqualToConstant:36].active = YES;
			[view.heightAnchor constraintEqualToAnchor:view.widthAnchor].active = YES;
			
			[view.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-8].active = YES;
		}
		
		{
			UILabel *view = [[UILabel alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.font = [UIFont systemFontOfSize:[UIFont smallSystemFontSize]];
			view.textColor = [UIColor darkTextColor];
			view.text = @"Longitude";
			[self addSubview:view];
			lblLon = view;
			
			[view.leadingAnchor constraintEqualToAnchor:_lblTitle.leadingAnchor].active = YES;
			[view.centerYAnchor constraintEqualToAnchor:btnCpLong.centerYAnchor].active = YES;
			[view.widthAnchor constraintEqualToAnchor:lblLat.widthAnchor].active = YES;
		}
		
		{
			UITextField *view = [[UITextField alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.keyboardType = UIKeyboardTypeDecimalPad;
			[view roundedCornerRadius:3];
			[view border1Px];
			[self addSubview:view];
			_tfLongitude = view;
			
			[view.leadingAnchor constraintEqualToAnchor:lblLon.trailingAnchor constant:8].active = YES;
			[view.trailingAnchor constraintEqualToAnchor:btnCpLong.leadingAnchor constant:-8].active = YES;
			[view.topAnchor constraintEqualToAnchor:btnCpLong.topAnchor].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:btnCpLong.bottomAnchor].active = YES;
		}
	}
}

@end
