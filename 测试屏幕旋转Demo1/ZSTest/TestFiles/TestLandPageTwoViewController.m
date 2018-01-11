//
//  TestLandPageTwoViewController.m
//  ZSTest
//
//  Created by Bjmsp on 2018/1/11.
//  Copyright © 2018年 zhoushuai. All rights reserved.
//

#import "TestLandPageTwoViewController.h"

@interface TestLandPageTwoViewController ()

@end

@implementation TestLandPageTwoViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"默认横屏界面2";
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //强制转屏
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];

}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - 屏幕旋转设置
//开启支持设备自动旋转
- (BOOL)shouldAutorotate{
    return YES;
}

//支持横屏显示的方向:只支持横屏
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

// 默认进入界面显示方向:默认垂直竖屏
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeLeft;
}


@end
