//
//  ViewController.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/4.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h" // 甲 = 乙
#import "ManagerPerson.h"// 协议的耦合  甲 知道 乙
#import "Person2.h"
#import "person3.h"
#import "ManagerPerson11.h"// 一方知道

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button_ = [UIButton buttonWithType:UIButtonTypeCustom];
    button_.frame = CGRectMake(100, 100, 100, 40);
    [button_ setTitle:@"开工-相互知道" forState:UIControlStateNormal];
    button_.titleLabel.font = [UIFont systemFontOfSize:14];
    button_.layer.masksToBounds = YES;
    button_.layer.cornerRadius = 5;
    button_.layer.borderWidth = 1.f;
    button_.layer.borderColor = [[UIColor colorWithWhite:0.7 alpha:1.0]CGColor];
    [button_ setTitleColor:[UIColor colorWithWhite:0.5 alpha:1.0] forState:UIControlStateNormal];
    [button_ addTarget:self action:@selector(startToWork) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_];
    
    button_ = [UIButton buttonWithType:UIButtonTypeCustom];
    button_.frame = CGRectMake(100, 150, 100, 40);
    [button_ setTitle:@"开工-互不知道" forState:UIControlStateNormal];
    button_.titleLabel.font = [UIFont systemFontOfSize:14];
    button_.layer.masksToBounds = YES;
    button_.layer.cornerRadius = 5;
    button_.layer.borderWidth = 1.f;
    button_.layer.borderColor = [[UIColor colorWithWhite:0.7 alpha:1.0]CGColor];
    [button_ setTitleColor:[UIColor colorWithWhite:0.5 alpha:1.0] forState:UIControlStateNormal];
    [button_ addTarget:self action:@selector(startTopPerson2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_];
    
    
    
    button_ = [UIButton buttonWithType:UIButtonTypeCustom];
    button_.frame = CGRectMake(100, 200, 100, 40);
    [button_ setTitle:@"开工-一方知道" forState:UIControlStateNormal];
    button_.titleLabel.font = [UIFont systemFontOfSize:14];
    button_.layer.masksToBounds = YES;
    button_.layer.cornerRadius = 5;
    button_.layer.borderWidth = 1.f;
    button_.layer.borderColor = [[UIColor colorWithWhite:0.7 alpha:1.0]CGColor];
    [button_ setTitleColor:[UIColor colorWithWhite:0.5 alpha:1.0] forState:UIControlStateNormal];
    [button_ addTarget:self action:@selector(startToPerson11) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_];
    
    
   
    
    
}

- (void)startToWork{
    
    
    [[Manager sharedInstance] startTask];
    
    
}


- (void)startTopPerson2{
    
    ManagerPerson *person = [[ManagerPerson alloc]init];
    [person begin];
    
    Person2 *person2 = [[Person2 alloc]init];
    [person2 doJob];
    person3 *per3 = [[person3 alloc]init];
    [per3 doJob];
    
}

// delegate-----
- (void)startToPerson11{
    
        [[ManagerPerson11 sharedInstance] beginPerson11];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
