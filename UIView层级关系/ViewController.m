//
//  ViewController.m
//  UIView层级关系
//
//  Created by zh dk on 2017/8/15.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建三个视图对象
    UIView *view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor=[UIColor blueColor];
    
    UIView *view02 = [[UIView alloc] init];
    view02.frame =CGRectMake(125, 125,150, 150);
    view02.backgroundColor=[UIColor orangeColor];
    
    UIView *view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor=[UIColor greenColor];
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    //将某一个视图调整到前面显示
    [self.view bringSubviewToFront:view02];
    
    //将某一个视图调整到最后面显示
    [self.view sendSubviewToBack:view03];
    
    //subVIews管理所有self.view的子视图的数组
    UIView *viewFront= self.view.subviews[2];
    UIView *viewBack = self.view.subviews[0];
    
    if (viewBack == view01) {
        NSLog(@"相等");
    }
    
    
    //清除视图
    view01.removeFromSuperview;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
