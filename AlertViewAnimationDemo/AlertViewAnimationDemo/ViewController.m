//
//  ViewController.m
//  AlertViewAnimationDemo
//
//  Created by yuanye on 16/3/7.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "ViewController.h"
#import "YYAlertView0.h"
#import "YYAlertView1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**
 *  放大缩小，弹性效果。
 */
- (IBAction)onButton0Action:(id)sender {
    YYAlertView0 *alertV0 = [[YYAlertView0 alloc] init];
    [alertV0 show];
}

/**
 *  角度旋转，位置移动。
 */
- (IBAction)onButton1Action:(id)sender {
    YYAlertView1 *alert1 = [[YYAlertView1 alloc] init];
    [alert1 show];
}

@end
