//
//  LYAppDelegate.m
//  LYCategory
//
//  Created by Rick Luo on 11/25/13.
//  Copyright (c) 2013 Luo Yu. All rights reserved.
//  Email: indie.luo@gmail.com
//

#import "LYAppDelegate.h"
#import "MenuViewController.h"
#import <LYCategory/LYCategory.h>

@implementation LYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	// OVERRIDE POINT FOR CUSTOMIZATION AFTER APPLICATION LAUNCH.
	self.window.backgroundColor = [UIColor whiteColor];
	
	MenuViewController *menu = [[MenuViewController alloc] init];
	UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:menu];
	nav.navigationBarHidden = NO;
	nav.navigationBar.translucent = NO;
	self.window.rootViewController = nav;
	
	[self.window makeKeyAndVisible];
	
	{
		NSString *filepath = [NSHomeDirectory() stringByAppendingFormat:@"/Documents/luos"];
		
		NSDictionary *filedata = @{
			LYK_TITLE:@"test file",
			LYK_VAL:@"you've found me.",
		};
		[filedata writeToFile:filepath atomically:YES];
		
		NSLog(@"file `luos` exist at %@? RESULT: %@", filepath, [NSFileManager isFileExistAtPath:filepath] ? @"Yes" : @"No");
	}
		
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
	// SENT WHEN THE APPLICATION IS ABOUT TO MOVE FROM ACTIVE TO INACTIVE STATE.
	// THIS CAN OCCUR FOR CERTAIN TYPES OF TEMPORARY INTERRUPTIONS (SUCH AS AN INCOMING PHONE CALL OR SMS MESSAGE)
	// OR WHEN THE USER QUITS THE APPLICATION AND IT BEGINS THE TRANSITION TO THE BACKGROUND STATE.
	// USE THIS METHOD TO PAUSE ONGOING TASKS, DISABLE TIMERS, AND THROTTLE DOWN OPENGL ES FRAME RATES.
	// GAMES SHOULD USE THIS METHOD TO PAUSE THE GAME.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
	// USE THIS METHOD TO RELEASE SHARED RESOURCES, SAVE USER DATA, INVALIDATE TIMERS,
	// AND STORE ENOUGH APPLICATION STATE INFORMATION TO RESTORE YOUR APPLICATION TO ITS CURRENT STATE
	// IN CASE IT IS TERMINATED LATER.
	// IF YOUR APPLICATION SUPPORTS BACKGROUND EXECUTION,
	// THIS METHOD IS CALLED INSTEAD OF APPLICATIONWILLTERMINATE: WHEN THE USER QUITS.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	// CALLED AS PART OF THE TRANSITION FROM THE BACKGROUND TO THE INACTIVE STATE;
	// HERE YOU CAN UNDO MANY OF THE CHANGES MADE ON ENTERING THE BACKGROUND.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	// RESTART ANY TASKS THAT WERE PAUSED (OR NOT YET STARTED) WHILE THE APPLICATION WAS INACTIVE.
	// IF THE APPLICATION WAS PREVIOUSLY IN THE BACKGROUND, OPTIONALLY REFRESH THE USER INTERFACE.
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// CALLED WHEN THE APPLICATION IS ABOUT TO TERMINATE.
	// SAVE DATA IF APPROPRIATE. SEE ALSO APPLICATIONDIDENTERBACKGROUND:.
}

@end
