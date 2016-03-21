//
//  ViewController.m
//  UIViewContentModeDemo
//
//  Created by yuanye on 16/3/21.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;
@property (weak, nonatomic) IBOutlet UIButton *scaleToFillButton;
@property (weak, nonatomic) IBOutlet UIButton *scaleAspectFitButton;
@property (weak, nonatomic) IBOutlet UIButton *scaleAspectFillButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    _leftImageView.image = [UIImage imageNamed:@"horizontalImage"];
    _rightImageView.image = [UIImage imageNamed:@"verticalImage"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action
- (IBAction)scaleToFill:(id)sender {
    _leftImageView.contentMode = UIViewContentModeScaleToFill;
    _rightImageView.contentMode = UIViewContentModeScaleToFill;
}

- (IBAction)scaleAspectFit:(id)sender {
    _leftImageView.contentMode = UIViewContentModeScaleAspectFit;
    _rightImageView.contentMode = UIViewContentModeScaleAspectFit;
}

- (IBAction)scaleAspectFill:(id)sender {
    _leftImageView.contentMode = UIViewContentModeScaleAspectFill;
    _rightImageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // 推荐:将超出容器范围的切除掉
//    _leftImageView.clipsToBounds = YES;
//    _rightImageView.clipsToBounds = YES;
}

@end
