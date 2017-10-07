//
//  ManagerPerson11.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "ManagerPerson11.h"

@implementation ManagerPerson11

+ (instancetype)sharedInstance{
    
    static ManagerPerson11 *instance = nil;
    static dispatch_once_t onceTocken;
    dispatch_once(&onceTocken, ^{
        
        instance = [[ManagerPerson11 alloc]init];
        
    });
    
    return instance;
    
}



- (void)finishDone{
    
    NSLog(@"可以下班了,等会儿我们打个的，一起走奥");
    
    
}

- (void)begin{
    
        [Person11 shareInstance].delegate = self; // 赋值
        [[Person11 shareInstance] doJob];
        NSLog(@"那好 下班");
    
  
}


@end
