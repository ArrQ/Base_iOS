//
//  ManagerPerson.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "ManagerPerson.h"
@implementation ManagerPerson

+ (instancetype)sharedInstance{
    
    static ManagerPerson *instance = nil;
    static dispatch_once_t onceTocken;
    dispatch_once(&onceTocken, ^{
       
        instance = [[ManagerPerson alloc]init];
        
    });
    
    return instance;
    
}


// init 方法 里面 监听
- (instancetype)init{
    
    if (self = [super init]) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(finishDone) name:Notif_FinishTask object:nil];
        
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moreDone) name:Notif_moreWorkTask object:nil];

        
    }
    
    return self;
    
    
}

- (void)finishDone{
    
    NSLog(@"可以下班了,等会儿我们打个的，一起走奥");
    
    
}

- (void)moreDone{
    
    NSLog(@"准了");
    
    
}


- (void)beginPerson11{
    

//    [[Person2 shareInstance] doJob];
//
//    [Person2 shareInstance].delegate = self; // 赋值
//
//    NSLog(@"那好 下班");

//     -------   互相 都不知道 用 通知 ------
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_BeginTask object:nil];
    
     NSLog(@"开始工作了");
    
    
}




@end
