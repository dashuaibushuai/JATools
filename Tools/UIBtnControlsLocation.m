//
//  UIBtnControlsLocation.m
//  JUTools
//
//  Created by John on 2018/12/7.
//  Copyright © 2018 John. All rights reserved.
//

#import "UIBtnControlsLocation.h"

@implementation UIBtnControlsLocation

- (CGRect)contentRectForBounds:(CGRect)bounds {
    if (self.contentRect.size.width == 0 || self.contentRect.size.height == 0) {
        return bounds;
    }
    return self.contentRect;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    if (self.titleRect.size.width == 0 || self.titleRect.size.height == 0) {
        return contentRect;
    }
    return self.titleRect;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    if (self.imgRect.size.width == 0 || self.imgRect.size.height == 0) {
        return contentRect;
    }
    return self.imgRect;
}

+ (id)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame image:(UIImage *)image state:(UIControlState)normal target:(nonnull id)target action:(nonnull SEL)action {
    UIButton *button = [UIButton buttonWithType:buttonType];
    button.frame = frame;
    [button setImage:image forState:normal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (id)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame iamge:(UIImage *)normalImage state:(UIControlState)normalState selectedImage:(UIImage *)selectedImage selectedState:(UIControlState)selectedState target:(id)target action:(SEL)action {
    UIButton *button = [self buttonWithType:buttonType frame:frame image:normalImage state:normalState target:target action:action];
    [button setImage:selectedImage forState:selectedState];
    return button;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

@end
