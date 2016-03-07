//
//  YYAlertView0.m
//  AlertViewAnimationDemo
//
//  Created by yuanye on 16/3/7.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "YYAlertView0.h"

@interface YYAlertView0 ()
@property (nonatomic, strong) UIView *alertV;
@property (nonatomic, strong) UIButton *closeBtn;
@end

@implementation YYAlertView0

- (instancetype)init {
    if (self = [super init]) {
        self.frame = SCREEN_BOUNDS;
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
        [self _initSubviews];
    }
    return self;
}

- (void)show {
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    [keyWindow addSubview:self];
    _alertV.transform = CGAffineTransformMakeScale(0.75, 0.75);
    _alertV.alpha = 0.0;
    [UIView animateWithDuration:0.7
                          delay:0.0
         usingSpringWithDamping:0.5
          initialSpringVelocity:1.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         _alertV.transform = CGAffineTransformMakeScale(1.0, 1.0);
                         _alertV.alpha = 1.0;
    } completion:nil];
}

- (void)dismiss {
    [UIView animateWithDuration:0.3 animations:^{
        _alertV.transform = CGAffineTransformMakeScale(0.75, 0.75);
        _alertV.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

#pragma mark - UI
- (void)_initSubviews {
    [self addSubview:self.alertV];
    [self.alertV addSubview:self.closeBtn];
}

- (UIView *)alertV {
    if (!_alertV) {
        _alertV = [[UIView alloc] initWithFrame:CGRectMake(50, (SCREEN_HEIGHT-200)/2.0, SCREEN_WIDTH-100, 200)];
        _alertV.layer.cornerRadius = 5.0;
        _alertV.layer.masksToBounds = YES;
        _alertV.backgroundColor = [UIColor colorWithWhite:1.0 alpha:1.0];
    }
    return _alertV;
}

- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_closeBtn setFrame:CGRectMake(0, 0, 50, 50)];
        [_closeBtn setTitle:@"╳" forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_closeBtn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _closeBtn;
}

@end
