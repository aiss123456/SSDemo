//
//  Vertex.m
//  testDemo
//
//  Created by aiss on 2020/6/14.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
- (void)drawWithContext:(CGContextRef)context {
    CGFloat x = self.location.x;
    CGFloat y  = self.location.y;
    CGContextAddLineToPoint(context, x, y);
}
@end
