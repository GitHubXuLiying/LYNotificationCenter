//
//  LYNotificationCenter.m
//  notificationTest
//
//  Created by xuliying on 2016/5/14.
//  Copyright © 2016年 xuliying. All rights reserved.
//

#import "LYNotificationCenter.h"

@interface LYNotificationCenter ()

@property (nonatomic, strong) NSMutableDictionary *observers;

@end


@implementation LYNotificationCenter

-(void)dealloc {
    NSLog(@"xly--%@",@"dealloc LYNotificationCenter");
    [self removeAllObserver];
}

- (NSMutableDictionary *)observers {
    if (_observers == nil) {
        self.observers = [NSMutableDictionary dictionary];
    }
    return _observers;
}

- (void)addObserverForName:(NSString *)name usingBlock:(void (^)(NSNotification *note))block {
    if (name) {
        NSMutableArray *obvs = self.observers[name];
        if (obvs == nil) {
            obvs = [NSMutableArray array];
        }
        id obv = [[NSNotificationCenter defaultCenter] addObserverForName:name object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
            if (block) {
                block(note);
            }
        }];
        if (obv) {
            [obvs addObject:obv];
        }
        [self.observers setObject:obvs forKey:name];
    }
}


- (void)removeAllObserver {
    if (self.observers && self.observers.count) {
        for (NSString *name in self.observers.allKeys) {
            [self removeObserverForName:name];
        }
    }
}

- (void)removeObserverForName:(NSString *)name {
    if (name) {
        NSArray *obvs = self.observers[name];
        if (obvs && obvs.count) {
            for (id obv in obvs) {
                [[NSNotificationCenter defaultCenter] removeObserver:obv];
            }
        }
        [self.observers removeObjectForKey:name];
    }
}

@end
