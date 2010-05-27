//
//  fontkitAppDelegate.h
//  fontkit
//
//  Created by Jon Gilkison on 5/27/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class fontkitViewController;

@interface fontkitAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    fontkitViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet fontkitViewController *viewController;

@end

