//
//  ViewController.m
//  文字换行
//
//  Created by wenhua on 2018/3/5.
//  Copyright © 2018年 wenhua. All rights reserved.
//

#import "ViewController.h"
#import "DCLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    DCLabel *label = [[DCLabel alloc]initWithFrame:CGRectMake(100, 100, 200, 300)];
    label.numberOfLines = 0;
    label.text = @"请跟着女声朗读以下文字\n 个人声明:本人自愿向中银消费金融申请贷款\n提供真实资料，遵守合约，同意上报征信";
    [label setLineHeight:10];//设置行间距
    [self.view addSubview:label];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
