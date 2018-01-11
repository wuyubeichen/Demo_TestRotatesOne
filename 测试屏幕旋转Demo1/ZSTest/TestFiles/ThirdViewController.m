//
//  ThirdViewController.m
//  ZSTest
//
//  Created by Bjmsp on 2018/1/8.
//  Copyright © 2018年 zhoushuai. All rights reserved.
//

#import "ThirdViewController.h"

#import "TestLandPageOneViewController.h"
#import "TestLandPageTwoViewController.h"
#import "TestModelViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"thirdVC";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Respond To Events
//点击按钮默认进入默认横屏界面
- (IBAction)enterLandPageBtnClick:(UIButton *)sender {
    switch (sender.tag) {
        case 101:{
            TestLandPageOneViewController *testLandOneVC = [[TestLandPageOneViewController alloc] initWithNibName:@"TestLandPageOneViewController" bundle:nil];
            testLandOneVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:testLandOneVC animated:YES];
            break;
        }
        case 102:{
            TestLandPageTwoViewController *testLandTwoVC = [[TestLandPageTwoViewController alloc] initWithNibName:@"TestLandPageTwoViewController" bundle:nil];
            testLandTwoVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:testLandTwoVC animated:YES];
            break;
        }

        case 103:{
            TestModelViewController *testModelVC = [[TestModelViewController alloc] initWithNibName:@"TestModelViewController" bundle:nil];
            [self presentViewController:testModelVC animated:YES completion:nil];
            break;
        }
        default:
            break;
    }

}




@end
