//
//  AKCascadingStyleAppDelegate.h
//  AKCascadingStyle
//
//  Created by Adrian on 6/3/10.
//  Copyright akosma software 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKCascadingStyleAppDelegate : NSObject <UIApplicationDelegate> 
{
@private    
    UIWindow *_window;
    UINavigationController *_navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
