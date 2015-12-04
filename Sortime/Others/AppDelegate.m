//
//  AppDelegate.m
//  Sortime
//
//  Created by Calcifer on 15/11/23.
//  Copyright © 2015年 com.Carcifer. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabBarController.h"
#import <CocoaLumberjack/CocoaLumberjack.h>
#import <Bugtags/Bugtags.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	[Bugtags startWithAppKey:@"b9092759408818279e5fc18088ae4ab4" invocationEvent:BTGInvocationEventBubble];
	[Bugtags setInvocationEvent:BTGInvocationEventShake];
	// 实例化 lumberjack
	[DDLog addLogger:[DDTTYLogger sharedInstance]];
	// 允许颜色
	[[DDTTYLogger sharedInstance] setColorsEnabled:YES];
	
	
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	MainTabBarController *mainTabBarController = [[MainTabBarController alloc] init];
	self.window.rootViewController = mainTabBarController;
	[self.window makeKeyAndVisible];
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