//
//  ViewController.m
//  JAUITools
//
//  Created by xiazhongchong on 04/12/2017.
//  Copyright © 2017 JJFly. All rights reserved.
//

#import "ViewController.h"
#import "CustomBtn.h"
#import "JATool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomBtn *cust = [CustomBtn buttonWithType:UIButtonTypeCustom];
    cust.frame = CGRectMake(50, 64, 100, 30);
    [cust setImage:nil forState:UIControlStateNormal];
    [cust setTitle:@"title" forState:UIControlStateNormal];
    [self.view addSubview:cust];
    
    
    UILabel *label = [UILabel createLabel:CGRectMake(100, 200, 100, 40) alignment:NSTextAlignmentLeft text:@"100" textColor:[UIColor redColor] font:12 sizeFit:YES tap:^{
        self.view.backgroundColor = [UIColor orangeColor];
    }];
    label.backgroundColor = [UIColor blueColor];
    [self.view addSubview:label];
    
    UIButton *button = [UIButton createButtonWithRect:CGRectMake(150, 250, 100, 40) title:@"button" titleColor:[UIColor yellowColor] target:self sel:@selector(tap) image:nil corner:0];
    [self.view addSubview:button];
    
    UIImageView *imageView = [UIImageView createImageView:CGRectMake(200, 250, 100, 100) image:nil isCorner:10 tap:^{
         self.view.backgroundColor = [UIColor blueColor];
    }];
    imageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:imageView];
}
- (void)tap {
    self.view.backgroundColor = [UIColor whiteColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
