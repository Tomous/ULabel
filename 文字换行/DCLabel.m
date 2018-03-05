//
//  DCLabel.m
//  文字换行
//
//  Created by wenhua on 2018/3/5.
//  Copyright © 2018年 wenhua. All rights reserved.
//

#import "DCLabel.h"
@interface DCLabel()

@property (nonatomic, assign) CGFloat lineHeight;

@end
@implementation DCLabel

-(void)setLineHeight:(CGFloat)lineHeight
{
    _lineHeight = lineHeight;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    
    [paragraphStyle setLineSpacing:_lineHeight];//调整行间距
    
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    self.attributedText = attributedString;
    [self sizeToFit];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
