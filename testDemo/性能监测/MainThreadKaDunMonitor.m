//
//  MainThreadKaDunMonitor.m
//  testDemo
//
//  Created by aiss on 2020/10/14.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "MainThreadKaDunMonitor.h"
#define RAPositionalOfSecondToMillisecond 1000

@interface MainThreadKaDunMonitor ()
@property (nonatomic, assign) CFRunLoopObserverRef  observe;
@property (nonatomic, strong) NSThread *monitorThread;//防止从`work queue` dispatch 到`golbal queue`造成死锁,这里使用常驻线程.
@property (nullable, atomic, strong) dispatch_semaphore_t semaphore;
@property (atomic, assign) BOOL isObserving;

@property (atomic, assign) CFRunLoopActivity lastActivity;
@property (atomic, assign) double blockBeginTime; //timestamp of block happen.
@end
@implementation MainThreadKaDunMonitor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _blockThreshold = 240;
        _anrThreshold = 5000;
        _monitorThread = [[NSThread alloc] initWithTarget:self selector:@selector(threadMain) object:nil];
        [_monitorThread setName:@"com.radar.main_thread_monitor"];
    }
    return self;
}
- (void)startObserver {
    CFRunLoopObserverContext context = {
        0,
        (__bridge void*)self,
        NULL,
        NULL,
        NULL,
    };
    self.observe = CFRunLoopObserverCreate(kCFAllocatorDefault, kCFRunLoopAllActivities, YES, 0, &RARunLoopObserverCallBack, &context);
    CFRunLoopAddObserver(CFRunLoopGetMain(), self.observe, kCFRunLoopCommonModes);
    self.semaphore = dispatch_semaphore_create(0);
    self.isObserving = YES;
    [_monitorThread start];
    
}

static void RARunLoopObserverCallBack (CFRunLoopObserverRef observer, CFRunLoopActivity activity, void *info){
    
    MainThreadKaDunMonitor *_self = (__bridge MainThreadKaDunMonitor *)info;
    if (!_self) {
        return;
    }
    _self.lastActivity = activity;
    if (_self.semaphore) {
        dispatch_semaphore_signal(_self.semaphore);
        if (_self.blockBeginTime > 0) {
            double blockDuration = [[NSDate date] timeIntervalSince1970] * RAPositionalOfSecondToMillisecond - _self.blockBeginTime;
        }
    }
}
    
@end
