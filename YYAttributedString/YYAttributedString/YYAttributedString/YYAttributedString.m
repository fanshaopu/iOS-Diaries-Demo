//
//  YYAttributedString.m
//  YYAttributedString
//
//  Created by yuanye on 16/2/29.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "YYAttributedString.h"

@implementation YYAttributedString

+ (NSAttributedString *)yy_attributeWithLinkTextViewItems:(NSArray *)linkTextViewItems
{
    NSMutableAttributedString *mAttributeString = [[NSMutableAttributedString alloc]initWithString:@""];
    
    for (YYLinkTextViewItem *item in linkTextViewItems) {
        
        [mAttributeString appendAttributedString:[item attributeStringNormal]];
    }
    return mAttributeString;
}

@end


@interface YYLinkTextViewItem()

@property(nonatomic, assign,readwrite)NSRange textRange;

@end

@implementation YYLinkTextViewItem

- (NSAttributedString *)attributeStringNormal;
{
    UIColor *textColor = self.textColor;
    NSRange range = NSMakeRange(0, self.textContent.length);
    NSMutableAttributedString *sub = [[NSMutableAttributedString alloc]initWithString:self.textContent];
    [sub addAttribute:NSForegroundColorAttributeName value:textColor range:range];
    [sub addAttribute:NSFontAttributeName value:self.textFont range:range];
    
    if (_lineSpacing>0)
    {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = _lineSpacing;
        [sub addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    }
    return sub;
}

@end