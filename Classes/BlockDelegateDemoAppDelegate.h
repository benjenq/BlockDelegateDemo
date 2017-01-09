//
//  BlockDelegateDemoAppDelegate.h
//  BlockDelegateDemo
//
//  Created by benjenq on 17/1/9.
//  Copyright 2017 benjenq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockDelegateDemoAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

