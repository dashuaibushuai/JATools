//
//  UILabel+Tool.m
//  JUTools
//
//  Created by John on 2018/12/7.
//  Copyright © 2018 John. All rights reserved.
//

#import "UILabel+Tool.h"

@implementation UILabel (Tool)

- (instancetype)init {
    self = [super init];
    if (self) {
        
        
    }
    return self;
}

+ (id)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize text:(NSString *)text {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.text = text;
    return label;
}

+ (id)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize text:(NSString *)text alignment:(NSTextAlignment)alignment isAdjustFontSize:(BOOL)isAdjustFontSize {
    UILabel *label = [self labelWithFrame:frame textColor:textColor fontSize:fontSize text:text];
    label.textAlignment = alignment;
    label.adjustsFontSizeToFitWidth = isAdjustFontSize;
    return label;
}


@end
