//
//  UILabel+Tool.h
//  JUTools
//
//  Created by John on 2018/12/7.
//  Copyright © 2018 John. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Tool)

+ (id)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize text:(NSString *)text;
+ (id)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize text:(NSString *)text alignment:(NSTextAlignment)alignment isAdjustFontSize:(BOOL)isAdjustFontSize;

@end

NS_ASSUME_NONNULL_END
