//
//  BackGroundV.m
//  testDemo
//
//  Created by aiss on 2020/6/14.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "BackGroundV.h"

@implementation BackGroundV

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 2);
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 150, 250);
    CGContextStrokePath(ctx);
}

- (void)startStrok {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 2);
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 150, 250);
    CGContextStrokePath(ctx);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}


@end
