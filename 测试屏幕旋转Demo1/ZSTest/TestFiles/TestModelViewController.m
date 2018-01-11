//
//  TestModelViewController.m
//  ZSTest
//
//  Created by Bjmsp on 2018/1/8.
//  Copyright © 2018年 zhoushuai. All rights reserved.
//

#import "TestModelViewController.h"

@interface TestModelViewController ()

@end

@implementation TestModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"默认横屏界面3";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Respond To Events
- (IBAction)backBtnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - 屏幕旋转设置
//开启支持设备自动旋转
- (BOOL)shouldAutorotate{
    return YES;
}

//支持横屏显示的方向:只支持所有方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}

// 默认进入界面显示方向:默认垂直竖屏
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeLeft;
}




@end
