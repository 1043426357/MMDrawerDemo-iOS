//
//  AppDelegate.m
//  SliderDemo-Objective
//
//  Created by 新闻 on 14-12-15.
//  Copyright (c) 2014年 Adways. All rights reserved.
//

#import "AppDelegate.h"
#import "MMDrawerController.h"

#import "ViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@interface AppDelegate ()
@property (nonatomic,strong) MMDrawerController * drawerController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
//    self.window!.backgroundColor = UIColor.whiteColor()
//    self.window!.makeKeyAndVisible()

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
 //   UIViewController * leftSideDrawerViewController = [[LeftViewController alloc] init];
    
  //  UIViewController * centerViewController = [[ViewController alloc] init];
    
  //  UIViewController * rightSideDrawerViewController = [[RightViewController alloc] init];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UITabBarController *centerNavController =(UITabBarController *)storyboard.instantiateInitialViewController;


//   UINavigationController * rightSideNavController = [[UINavigationController alloc] initWithRootViewController:rightSideDrawerViewController];
//       UINavigationController * leftSideNavController = [[UINavigationController alloc] initWithRootViewController:leftSideDrawerViewController];
    
    UIStoryboard *leftBoard = [UIStoryboard storyboardWithName:@"Left" bundle:nil];
    UINavigationController *leftSideNavController = [leftBoard instantiateViewControllerWithIdentifier:@"LeftMain"];
    
    UIStoryboard *rightBoard = [UIStoryboard storyboardWithName:@"Right" bundle:nil];
    UINavigationController *rightSideNavController = [rightBoard instantiateViewControllerWithIdentifier:@"rightMain"];;
    
    self.drawerController = [[MMDrawerController alloc]
                             initWithCenterViewController:centerNavController
                             leftDrawerViewController:leftSideNavController
                             rightDrawerViewController:rightSideNavController];
    
    [self.drawerController setShowsShadow:NO];
    self.drawerController.maximumLeftDrawerWidth = 200;
    self.drawerController.maximumRightDrawerWidth = 200;
    
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    self.window.rootViewController = self.drawerController;




    
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
