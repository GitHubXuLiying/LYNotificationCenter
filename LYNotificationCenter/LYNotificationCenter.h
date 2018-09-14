//
//  LYNotificationCenter.h
//  notificationTest
//
//  Created by xuliying on 2016/5/14.
//  Copyright © 2016年 xuliying. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LYNotificationCenter : NSObject

- (void)addObserverForName:(NSString *)name usingBlock:(void (^)(NSNotification *note))block;
- (void)removeAllObserver;
- (void)removeObserverForName:(NSString *)name;

@end
