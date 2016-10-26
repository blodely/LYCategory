//
//  UITextView+Input.m
//  LYCategory
//
//  Created by Rick Luo on 12/2/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import "UITextView+Input.h"

@implementation UITextView (Input)

#pragma mark EMPTY

- (BOOL)isEmptyWithPlaceholder:(NSString *)placeholder {
	
	if (placeholder != nil) {
		return self == nil || self.text == nil || [self.text isEqualToString:@""] || [self.text isEqualToString:placeholder];
	}
	return self == nil || self.text == nil || [self.text isEqualToString:@""];
}

@end
