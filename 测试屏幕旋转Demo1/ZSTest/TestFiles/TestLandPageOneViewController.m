//
//  TestLandPageOneViewController.m
//  ZSTest
//
//  Created by Bjmsp on 2018/1/11.
//  Copyright © 2018年 zhoushuai. All rights reserved.
//

#import "TestLandPageOneViewController.h"

@interface TestLandPageOneViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textView_height;


@end

@implementation TestLandPageOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"默认横屏界面1";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Respond To Events
//隐藏键盘
- (IBAction)tapAction:(id)sender {
    [self.view endEditing:YES];
}



#pragma mark - 屏幕旋转设置
//开启支持设备自动旋转
- (BOOL)shouldAutorotate{
    return YES;
}

//支持横屏显示的方向:只支持横屏
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}

// 默认进入界面显示方向:默认垂直竖屏
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeLeft;
}


//屏幕旋转之后，屏幕的宽高互换，我们借此判断重新布局
//横屏：size.width > size.height
//竖屏: size.width < size.height
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    if (size.width > size.height) {
        //横屏设置，为防止遮挡键盘,调整输入视图的高度
        self.textView_height.constant = 50;
    }else{
        //竖屏设置
        self.textView_height.constant = 200;
    }
}

@end
