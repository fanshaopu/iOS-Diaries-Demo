//
//  ViewController.m
//  YYAttributedString
//
//  Created by yuanye on 16/2/29.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "ViewController.h"
#import "YYAttributedString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lbl1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 64, 300, 20)];
    lbl1.text = @"春江花朝秋月夜";
    [self.view addSubview:lbl1];
    
    UILabel *lbl2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 104, 300, 20)];
    lbl2.text = @"春江花朝秋月夜";
    [self.view addSubview:lbl2];
    
    YYLinkTextViewItem *item1 = [[YYLinkTextViewItem alloc]init];
    item1.textColor = [UIColor blackColor];
    item1.textContent = @"春江花朝";
    item1.textFont = [UIFont systemFontOfSize:10];
    
    YYLinkTextViewItem *item2 = [[YYLinkTextViewItem alloc]init];
    item2.textColor = [UIColor orangeColor];
    item2.textContent = @"秋月夜";
    item2.textFont = [UIFont systemFontOfSize:20];
    NSAttributedString *attStr = [YYAttributedString yy_attributeWithLinkTextViewItems:@[item1,item2]];
    
    lbl2.attributedText = attStr;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
