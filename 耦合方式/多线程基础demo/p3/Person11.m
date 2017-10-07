//
//  Person11.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "Person11.h"

@implementation Person11

+ (instancetype)shareInstance{
    
    static Person11 *instance = nil;
    static dispatch_once_t onceTocken;
    dispatch_once(&onceTocken, ^{
        
        instance = [[Person11 alloc]init];
        
    });
    
    return instance;
}

- (void)doJob{

//        ---------
         NSLog(@"我要开始工作了");
        if (_delegate) {
    
            [_delegate personFinished];
            NSLog(@"搞定了");
    
        }
    
}

@end
