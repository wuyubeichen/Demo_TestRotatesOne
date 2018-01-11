//
//  SecondViewController.m
//  ZSTest
//
//  Created by Bjmsp on 2018/1/8.
//  Copyright © 2018年 zhoushuai. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"secondVC";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - 点击按钮切换旋转
- (IBAction)changeScreenStyleBtnClick:(id)sender {
    [self setInterfaceOrientation:UIInterfaceOrientationLandscapeLeft];
    //也可以使用方法2:但是注意参数类型
    //[self setDeviceInterfaceOrientation:UIDeviceOrientationLandscapeRight];
}


//方法1和方法2只有在shouldAutorotate返回YES的时候生效
//方法1：
- (void)setInterfaceOrientation:(UIInterfaceOrientation)orientation {
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val = orientation;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}


//方法2：
- (void)setDeviceInterfaceOrientation:(UIDeviceOrientation)orientation {
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:orientation] forKey:@"orientation"];
    }
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
    return UIInterfaceOrientationPortrait;
}

@end
