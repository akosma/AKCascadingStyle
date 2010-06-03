//
//  AKCascadingStyleAppDelegate.m
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright akosma software 2010. All rights reserved.
//

#import "AKCascadingStyleAppDelegate.h"
#import "RootViewController.h"

@implementation AKCascadingStyleAppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	[self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];
	return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application 
{
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc 
{
	[self.navigationController release];
	[self.window release];
	[super dealloc];
}

@end
