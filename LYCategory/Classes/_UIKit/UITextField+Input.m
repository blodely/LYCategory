//
//  UITextField+Input.m
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "UITextField+Input.h"

@implementation UITextField (Input)

#pragma mark EMPTY

- (BOOL)isEmpty {
	return self == nil || self.text == nil || [self.text isEqualToString:@""];
}

@end
