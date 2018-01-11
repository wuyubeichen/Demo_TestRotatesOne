//
//  BaseNavigationController.m
//  zstest
//
//  Created by zhoushuai on 16/1/26.
//  Copyright © 2016年 zhoushuai. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()<UINavigationControllerDelegate>

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - 关于旋转的设置
//是否自动旋转
-(BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}

//支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.topViewController supportedInterfaceOrientations];
}

//默认方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}



//#pragma mark - UINavigationControllerDelegate解决顶层视图控制器首次进入默认屏幕方向无效的问题
//- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    [self presentViewController:[UIViewController new] animated:NO completion:^{
//        [self dismissViewControllerAnimated:NO completion:nil];
//    }];
//}



@end









