//
//  AppDelegate.m
//  TFood
//
//  Created by Tin Blanc on 5/9/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "AppDelegate.h"
#import "MainScreen.h"
#import "SaleOffScreen.h"
#import "AddressScreen.h"
#import "AboutScreen.h"
#import "UIColor+Extend.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    

    
    MainScreen* mainScreen = [[MainScreen alloc] initWithNibName:@"MainScreen" bundle:nil];
    mainScreen.title = @"Food";
    UINavigationController* naviMainScreen= [[UINavigationController alloc] initWithRootViewController:mainScreen] ;
    naviMainScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu"
                                                              image:[UIImage imageNamed:@"foodBar"]
                                                      selectedImage:[UIImage imageNamed:@"foodBar"]];
    
    SaleOffScreen* saleOffScreen = [[SaleOffScreen alloc] init];
    saleOffScreen.title = @"Sale";
    UINavigationController* naviSaleOffScreen = [[UINavigationController alloc] initWithRootViewController:saleOffScreen];
    [naviSaleOffScreen.tabBarItem setTitle:@"Sale"];
    [naviSaleOffScreen.tabBarItem setImage:[UIImage imageNamed:@"sale"]];
    [naviSaleOffScreen.tabBarItem setSelectedImage:[UIImage imageNamed:@"sale"]];
    
    AddressScreen* addressScreen = [[AddressScreen alloc] init];
    addressScreen.title = @"Address";
    UINavigationController* naviAddressScreen = [[UINavigationController alloc] initWithRootViewController:addressScreen];
    [naviAddressScreen.tabBarItem setTitle:@"Address"];
    [naviAddressScreen.tabBarItem setImage:[UIImage imageNamed:@"location"]];
    [naviAddressScreen.tabBarItem setSelectedImage:[UIImage imageNamed:@"location"]];
    
    AboutScreen* aboutScreen = [[AboutScreen alloc] init];
    aboutScreen.title = @"About";
    UINavigationController* naviAboutScreen = [[UINavigationController alloc] initWithRootViewController:aboutScreen];
    [naviAboutScreen.tabBarItem setTitle:@"About"];
    [naviAboutScreen.tabBarItem setImage:[UIImage imageNamed:@"about"]];
    [naviAboutScreen.tabBarItem setSelectedImage:[UIImage imageNamed:@"about"]];
    
    // Khởi tạo tab bar controller
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[naviMainScreen,naviSaleOffScreen,naviAddressScreen,naviAboutScreen];
    
    


    tabBarController.tabBar.tintColor = [UIColor redColor];
//    tabBarController.tabBar.barTintColor = [UIColor whiteColor];

//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}  forState:UIControlStateNormal ]; // Set màu chữ
    
    

    [naviMainScreen.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];

    
    naviMainScreen.navigationBar.translucent = NO;
    naviMainScreen.navigationBar.barTintColor = [[UIColor alloc] initWithHex:@"ce3740" alpha:1.0];
    
    
    
    
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
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
