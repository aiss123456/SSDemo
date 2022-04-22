//
//  Dot.h
//  testDemo
//
//  Created by aiss on 2020/6/26.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "Vertex.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dot : Vertex<markProtocol>
@property (nonatomic, strong) UIColor  *color;
@property (nonatomic, assign) CGFloat  size;

@end

NS_ASSUME_NONNULL_END
