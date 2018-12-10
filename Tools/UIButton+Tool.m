//
//  UIButton+Tool.m
//  JUTools
//
//  Created by John on 2018/12/7.
//  Copyright © 2018 John. All rights reserved.
//

#import "UIButton+Tool.h"

@implementation UIButton (Tool)

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    
    [self setBackgroundImage:[self imageWithColor:backgroundColor andSize:CGSizeMake(1, 1)] forState:state];
}



- (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));
    
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
