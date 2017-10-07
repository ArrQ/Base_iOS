//
//  Manager.h
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject

+ (instancetype)sharedInstance;

- (void)finished;
- (void)startTask;// 入口

@end
