//
//  AppDelegate.m
//  UIApplication- Class
//
//  Created by apple on 2017/4/17.
//  Copyright © 2017年 Chuckie. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nvc;
    [self.window makeKeyAndVisible];
    //菜单图标
    UIApplicationShortcutIcon *iconCamera = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    //菜单文字
    UIMutableApplicationShortcutItem *itemCamera = [[UIMutableApplicationShortcutItem alloc] initWithType:@"1" localizedTitle:@"拍照"];
    //绑定信息到指定菜单
    itemCamera.icon = iconCamera;
    
    UIApplicationShortcutIcon *icons = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLocation];
    UIMutableApplicationShortcutItem *item = [[UIMutableApplicationShortcutItem alloc] initWithType:@"4" localizedTitle:@"location"];
    item.icon = icons;
    //相册
    //菜单图标
    UIApplicationShortcutIcon *iconPhotoLibrary = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeSearch];
    //菜单文字
    UIMutableApplicationShortcutItem *itemPhotoLibrary = [[UIMutableApplicationShortcutItem alloc] initWithType:@"2" localizedTitle:@"相册"];
    //绑定信息到指定菜单
    itemPhotoLibrary.icon = iconPhotoLibrary;
    //绑定到App icon
    application.shortcutItems = @[itemCamera,itemPhotoLibrary,item];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
