//
//  AppDelegate.m
//  xsjDemo
//
//  Created by 许盛杰 on 2021/9/13.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.nvc =[[UINavigationController alloc]initWithRootViewController:[[HomeViewController alloc] init]];
    [self.nvc.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.nvc.navigationBar.shadowImage = [UIImage new];
    self.window.rootViewController = self.nvc;
    return YES;
}





@end
