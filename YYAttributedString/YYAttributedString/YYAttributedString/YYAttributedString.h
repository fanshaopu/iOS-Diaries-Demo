//
//  YYAttributedString.h
//  YYAttributedString
//
//  Created by yuanye on 16/2/29.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YYAttributedString : NSObject

+ (NSAttributedString *)yy_attributeWithLinkTextViewItems:(NSArray *)linkTextViewItems;

@end

@class UIColor,UIFont;

@interface YYLinkTextViewItem : NSObject

@property(nonatomic, strong)NSString *textContent;
@property(nonatomic, strong)UIColor *textColor;
@property(nonatomic, strong)UIFont *textFont;
@property(nonatomic, assign)CGFloat lineSpacing;

- (NSAttributedString *)attributeStringNormal;

@end