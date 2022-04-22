//
//  Stroke.m
//  testDemo
//
//  Created by aiss on 2020/6/26.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "Stroke.h"

@interface Stroke ()
{
    
}
@end
@implementation Stroke
- (void)drawWithContext:(CGContextRef)context {
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    for (id<markProtocol>mark in _children) {
        [mark drawWithContext:context];
    }
    CGContextSetLineWidth(context, self.size);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetStrokeColorWithColor(context, [self.color CGColor]);
    CGContextStrokePath(context);
}
@end
