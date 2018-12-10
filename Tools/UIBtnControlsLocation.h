//
//  UIBtnControlsLocation.h
//  JUTools
//
//  Created by John on 2018/12/7.
//  Copyright © 2018 John. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBtnControlsLocation : UIButton

@property (nonatomic, assign) CGRect contentRect;
@property (nonatomic, assign) CGRect imgRect;
@property (nonatomic, assign) CGRect titleRect;
@property (nonatomic, assign) CGFloat cornerRadius;

+ (id)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame image:(UIImage *)image state:(UIControlState)normal target:(id)target action:(SEL)action;

+ (id)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame iamge:(UIImage *)normalImage state:(UIControlState)normalState selectedImage:(UIImage *)selectedImage selectedState:(UIControlState)selectedState target:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
