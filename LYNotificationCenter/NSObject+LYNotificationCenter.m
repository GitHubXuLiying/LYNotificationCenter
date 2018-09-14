//
//  NSObject+LYNotificationCenter.m
//  notificationTest
//
//  Created by xuliying on 2016/5/14.
//  Copyright © 2016年 xuliying. All rights reserved.
//

#import "NSObject+LYNotificationCenter.h"
#import <objc/message.h>
@implementation NSObject (LYNotificationCenter)

- (void)setNotificationCenter:(LYNotificationCenter *)notificationCenter {
    objc_setAssociatedObject(self, @selector(notificationCenter), notificationCenter, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (LYNotificationCenter *)notificationCenter {
    LYNotificationCenter *notifi = objc_getAssociatedObject(self, _cmd);
    if (notifi == nil) {
        notifi = [[LYNotificationCenter alloc] init];
        self.notificationCenter = notifi;
    }
    return notifi;
}

@end
