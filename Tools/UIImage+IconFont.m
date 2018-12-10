//
//  UIImage+IconFont.m
//  JUTools
//
//  Created by John on 2018/12/10.
//  Copyright © 2018 John. All rights reserved.
//

#import "UIImage+IconFont.h"

@implementation UIImage (IconFont)

+ (id)imageWithIconFont:(NSString *)icon size:(CGSize)size {
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, size.width, size.height);
    UIFont *iconFont = [UIFont fontWithName:@"iconfont" size:size.width];
    label.font = iconFont;
    label.text = icon;
    
    UIGraphicsBeginImageContextWithOptions(label.frame.size, NO, [UIScreen mainScreen].scale);
    [label.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return viewImage;
}

@end
