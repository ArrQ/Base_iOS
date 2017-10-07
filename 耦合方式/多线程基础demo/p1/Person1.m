//
//  Person1.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "Person1.h"
#import "Manager.h"
@implementation Person1

+ (instancetype)sharedInstance{
    
    static Person1 *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        instance = [[Person1 alloc]init];
    });
    
    return instance;
    
}

- (void)startToWork{
    
    
     NSLog(@"我开始工作了不要打扰我.ok?");
    
    
//    判断 是否搞定  搞定了之后  调用 方法
     NSLog(@"搞定");

    [[Manager sharedInstance]finished];
    
    
    
}



@end
