//
//  UIView+Tool.m
//  JUTools
//
//  Created by John on 2018/12/10.
//  Copyright © 2018 John. All rights reserved.
//

#import "UIView+Tool.h"

@implementation UIView (Tool)

+ (id)viewWithFrame:(CGRect)frame color:(UIColor *)color {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    return view;
}

@end
