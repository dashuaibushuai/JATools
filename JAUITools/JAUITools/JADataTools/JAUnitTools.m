//
//  JAUnitTools.m
//  JAUITools
//
//  Created by xiazhongchong on 14/12/2017.
//  Copyright © 2017 JJFly. All rights reserved.
//

#import "JAUnitTools.h"

@implementation JAUnitTools

+ (int)unitSpecial:(double)number index:(int)ex {
    if (number < pow(10, ex)) return 0;
    return (int)(number / pow(10, ex)) % 10;
}

@end
