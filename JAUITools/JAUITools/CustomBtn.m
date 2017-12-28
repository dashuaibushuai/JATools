
//
//  CustomBtn.m
//  JAUITools
//
//  Created by xiazhongchong on 22/12/2017.
//  Copyright © 2017 JJFly. All rights reserved.
//

#import "CustomBtn.h"

@implementation CustomBtn




- (CGRect)contentRectForBounds:(CGRect)bounds {
    NSLog(@"bounds==%@", NSStringFromCGRect(bounds));
    return bounds;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
