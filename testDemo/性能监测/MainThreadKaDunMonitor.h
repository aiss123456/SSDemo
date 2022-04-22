//
//  MainThreadKaDunMonitor.h
//  testDemo
//  主线程卡顿监听
//  Created by aiss on 2020/10/14.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainThreadKaDunMonitor : NSObject

@property (atomic, assign) NSUInteger blockThreshold;//卡顿阈值,默认50ms.单位ms

@property (atomic, assign) NSUInteger anrThreshold;//卡死阈值,默认5000ms.单位ms
@end

NS_ASSUME_NONNULL_END
