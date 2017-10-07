//
//  ManagerPerson11.h
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/6.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person11.h"

@interface ManagerPerson11 : NSObject<PersonDelegate>

+ (instancetype)sharedInstance;

- (void)beginPerson11;

@end
