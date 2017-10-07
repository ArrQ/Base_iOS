//
//  Manager.m
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import "Manager.h"
#import "Person1.h"

@implementation Manager

+ (instancetype)sharedInstance{
    
       static Manager *instance = nil;
       static dispatch_once_t onceToken;
       dispatch_once(&onceToken, ^{
           instance = [[Manager alloc]init];
        
    });
    
    return instance;
}

- (void)startTask{
    
    NSLog(@"上班了!");
    [[Person1 sharedInstance] startToWork];
}

- (void)finished{
    NSLog(@"下班吧");
}




@end
