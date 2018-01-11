//
//  BaseViewController.m
//  zstest
//
//  Created by zhoushuai on 16/1/26.
//  Copyright © 2016年 zhoushuai. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - 关于旋转的设置
//是否自动旋转:所有控制器默认不自动旋转，需要横屏的视图控制器中覆写此方法，返回YES
-(BOOL)shouldAutorotate{
    return NO;
}

//支持哪些屏幕方向:只支持竖屏
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

//默认方向:只支持正常竖屏
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}




@end
