//
//  ViewController.m
//  StretchImageDemo
//
//  Created by yuanye on 16/2/24.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *defaultImgV;
@property (weak, nonatomic) IBOutlet UIImageView *wrongImgV;
@property (weak, nonatomic) IBOutlet UIImageView *right1ImgV;
@property (weak, nonatomic) IBOutlet UIImageView *right2ImgV;
@property (weak, nonatomic) IBOutlet UIImageView *right3ImgV;
@property (weak, nonatomic) IBOutlet UIImageView *right4ImgV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *img = [UIImage imageNamed:@"chat_bg"];
    
    // 默认图片大小
    self.defaultImgV.image = img;
    
    // 错误拉伸图片
    self.wrongImgV.image = img;
    
    // 正确拉伸图片方法1
    self.right1ImgV.image = [img resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15)];
    
    // 正确拉伸图片方法2
    self.right2ImgV.image = [img resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15)
                                                resizingMode:UIImageResizingModeStretch];
    
    // 正确拉伸图片方法3
    self.right3ImgV.image = [img stretchableImageWithLeftCapWidth:img.size.width * 0.5
                                                     topCapHeight:img.size.height * 0.5];
    
    // 正确拉伸图片方法4  在 Assets.xcassets 中操作
    UIImage *img1 = [UIImage imageNamed:@"chat_bg_1"];
    self.right4ImgV.image = img1;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
