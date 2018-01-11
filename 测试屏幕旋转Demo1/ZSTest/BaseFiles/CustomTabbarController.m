//
//  CustomTabbarController.m
//  ZSTest
//
//  Created by Bjmsp on 2018/1/8.
//  Copyright © 2018年 zhoushuai. All rights reserved.
//

#import "CustomTabbarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface CustomTabbarController ()

@end

@implementation CustomTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    FirstViewController *firstVC = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    BaseNavigationController *firstNVC = [[BaseNavigationController alloc] initWithRootViewController:firstVC];
    firstNVC.tabBarItem =  [[UITabBarItem alloc] initWithTitle:@"firstVC" image:nil selectedImage:nil];

    
    SecondViewController *secondVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    BaseNavigationController *secondNVC = [[BaseNavigationController alloc] initWithRootViewController:secondVC];
    secondNVC.tabBarItem =  [[UITabBarItem alloc] initWithTitle:@"secondVC" image:nil selectedImage:nil];

    ThirdViewController *thiridVC = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    BaseNavigationController *thiridNVC = [[BaseNavigationController alloc] initWithRootViewController:thiridVC];
    thiridNVC.tabBarItem =  [[UITabBarItem alloc] initWithTitle:@"thirdVC" image:nil selectedImage:nil];

    self.viewControllers = @[firstNVC,secondNVC,thiridNVC];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - 关于旋转的设置
//是否自动旋转
-(BOOL)shouldAutorotate{
    return self.selectedViewController.shouldAutorotate;
}

//支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.selectedViewController supportedInterfaceOrientations];
}

//默认方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

//#pragma mark -UITabBarControllerDelegate
//- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
//    [self presentViewController:[UIViewController new] animated:NO completion:^{
//        [self dismissViewControllerAnimated:NO completion:nil];
//    }];
//}


@end
