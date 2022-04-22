//
//  mark.h
//  testDemo
//
//  Created by aiss on 2020/6/14.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol markProtocol <NSObject>
@property (nonatomic, strong) UIColor  *color;
@property (nonatomic, assign) CGFloat  size;
@property (nonatomic, assign) CGPoint  location;
@property (nonatomic, assign) NSUInteger  count;
@property (nonatomic, strong) id <markProtocol> lastChaild;
- (void)addMark:(id<markProtocol>)mark;
- (void)removeMark:(id<markProtocol>)mark;
- (id<markProtocol>)childMarkAtIndex:(NSUInteger)index;

- (void)drawWithContext:(CGContextRef)context;
@end

NS_ASSUME_NONNULL_END
