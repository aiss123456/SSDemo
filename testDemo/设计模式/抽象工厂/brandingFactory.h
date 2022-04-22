//
//  brandingFactory.h
//  testDemo
//
//  Created by aiss on 2020/6/26.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface brandingFactory : NSObject
+(brandingFactory *)factory;

- (UIView *)brandedView;
- (UIButton *)brandedMainButtom;
- (UIToolbar *)brandedToolBar;
@end

NS_ASSUME_NONNULL_END
