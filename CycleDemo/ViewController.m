//
//  ViewController.m
//  CycleDemo
//
//  Created by zzyyd on 2017/9/3.
//  Copyright © 2017年 zzyyd. All rights reserved.
//

#import "ViewController.h"
#import "DrawCyclesView.h"
#import "DrawCycleBorderImageView.h"

#define ScreenWidth     [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight    [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DrawCyclesView*cView =[[DrawCyclesView alloc]initWithFrame:CGRectMake((ScreenWidth - 200)/2, 50, 200, 200)];
    [self.view addSubview:cView];
    
    DrawCycleBorderImageView*bView =[[DrawCycleBorderImageView alloc]initWithFrame:CGRectMake((ScreenWidth - 310)/2, cView.frame.origin.y + cView.frame.size.height + 20, 310, 310)];
    bView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:bView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
