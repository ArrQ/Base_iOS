//
//  AppDelegate.h
//  多线程基础demo
//
//  Created by ArrQ on 2017/10/4.
//  Copyright © 2017年 ArrQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

