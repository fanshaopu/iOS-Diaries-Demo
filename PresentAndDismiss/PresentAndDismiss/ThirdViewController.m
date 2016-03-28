//
//  ThirdViewController.m
//  PresentAndDismiss
//
//  Created by yuanye on 16/3/28.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)dealloc {
    NSLog(@"c_dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cDismissB:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cDismissA:(id)sender {
    // C视图控制器触发dismiss方法前添加这么一段代码
    UIViewController *rootVC = self.presentingViewController;
    // rootVC.view.alpha = 0;
    while (rootVC.presentingViewController) {
        rootVC = rootVC.presentingViewController;
    }
    [rootVC dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
