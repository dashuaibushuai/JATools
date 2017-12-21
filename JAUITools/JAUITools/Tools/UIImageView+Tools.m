//
//  UIImageView+Tools.m
//  JAUITools
//
//  Created by xiazhongchong on 04/12/2017.
//  Copyright © 2017 JJFly. All rights reserved.
//

#import "UIImageView+Tools.h"

@implementation UIImageView (Tools)

void(^tapImageView)(void);

+ (UIImageView *)createImageView:(CGRect)rect
                           image:(UIImage *)image
                        isCorner:(CGFloat)corner {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:rect];
    imageView.image = image;
    if (corner > 0) {
        imageView.layer.cornerRadius = corner;
        imageView.clipsToBounds = YES;
    }
    imageView.contentMode = UIViewContentModeScaleAspectFit | UIViewContentModeCenter;
    return imageView;
}

+ (UIImageView *)createImageView:(CGRect)rect
                           image:(UIImage *)image
                        isCorner:(CGFloat)corner
                             tap:(void(^)(void))tapBlock {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:rect];
    imageView.image = image;
    imageView.userInteractionEnabled = YES;
    tapImageView = tapBlock;
    if (corner > 0) {
        imageView.layer.cornerRadius = corner;
        imageView.clipsToBounds = YES;
    }
    imageView.contentMode = UIViewContentModeScaleAspectFit | UIViewContentModeCenter;
    return imageView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (tapImageView) {
        tapImageView();
    }
}

@end
