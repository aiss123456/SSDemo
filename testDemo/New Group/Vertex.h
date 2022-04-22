//
//  Vertex.h
//  testDemo
//
//  Created by aiss on 2020/6/14.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "markProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Vertex : NSObject<markProtocol>

@property (nonatomic, assign) CGPoint  location;
@property (nonatomic, strong) id <markProtocol> lastChaild;
@property (nonatomic, assign) NSUInteger count;

@end

NS_ASSUME_NONNULL_END
