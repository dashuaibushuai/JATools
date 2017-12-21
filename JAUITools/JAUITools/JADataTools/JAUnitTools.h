//
//  JAUnitTools.h
//  JAUITools
//
//  Created by xiazhongchong on 14/12/2017.
//  Copyright © 2017 JJFly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JAUnitTools : NSObject


/**
 get special index number
 like 12345  want get hurend nuber then ex = 2;->3
 @param number number
 @param ex 10^ex
 @return int
 */
+ (int)unitSpecial:(double)number index:(int)ex;

@end
