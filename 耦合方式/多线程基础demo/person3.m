//
//  person3.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "person3.h"

@implementation person3
// innit 方法 里面 监听
- (instancetype)init{
    
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doJob) name:Notif_FinishTask object:nil];
        
        NSLog(@"不好意思，我迟到了");
    }
    
    return self;
    
    
}

- (void)doJob{
    
    
    NSLog(@"老板我申请加班");// 一定是活干完后  再发送通知 有顺序的
    
    //    发送完成的通知
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notif_moreWorkTask object:nil];
    
    
    
}
@end
