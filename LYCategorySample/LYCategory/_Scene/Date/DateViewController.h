//
//  DateViewController.h
//  LYCategory
//
//  Created by Rick Luo on 12/9/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DateViewController : UIViewController {
	
	IBOutlet UILabel *lblUTC;
	
	IBOutlet UIDatePicker *dpDate;
}

- (IBAction)dateChanged:(id)sender;

@end
