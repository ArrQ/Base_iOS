//
//  Person2.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "Person2.h"

@implementation Person2

// innit 方法 里面 监听
- (instancetype)init{
    
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doJob) name:Notif_BeginTask object:nil];
        
        NSLog(@"好的 ，我开始上班");
    }
    
    return self;
    
    
}

- (void)doJob{
    
    
    NSLog(@"搞定了，可以下班 了吗？");// 一定是活干完后  再发送通知 有顺序的

    //    发送完成的通知
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_FinishTask object:nil];
    

}
@end
