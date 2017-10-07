//
//  Person11.h
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonDelegate <NSObject>

- (void)personFinished;

@end

@interface Person11 : NSObject

@property(nonatomic,assign)id <PersonDelegate> delegate;

+ (instancetype)shareInstance;

- (void)doJob;

@end
