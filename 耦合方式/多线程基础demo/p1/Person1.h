//
//  Person1.h
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person1 : NSObject
+ (instancetype)sharedInstance;
- (void)startToWork;
@end
