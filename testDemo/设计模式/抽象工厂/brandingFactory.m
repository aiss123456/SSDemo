//
//  brandingFactory.m
//  testDemo
//
//  Created by aiss on 2020/6/26.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "brandingFactory.h"
#import "AcmeBrandFactory.h"
#import "SierraBrandFactory.h"

#define USE_ACME @"USE_ACME"
//#define USE_BRAND @"USE_BRAND"
@implementation brandingFactory

+ (brandingFactory *)factory {
    
#if defined (USE_ACME)
    return [[AcmeBrandFactory alloc]init];
#elif defined (USE_BRAND)
    return [[SierraBrandFactory alloc]init];
#else
    return nil;
#endif
}

- (UIView *)brandedView {
    
    //子类实现
    return nil;
}

- (UIButton *)brandedMainButtom {
    //子类重载
    return nil;
}

- (UIToolbar *)brandedToolBar {
    //子类重载
    return nil;
}

/**
 NSNumber  *boolNumber = [NSNumber numberWithBool:YES];
 NSNumber  *charNumbner = [NSNumber numberWithChar:'a'];
 
 [boolNumber intValue];
 [charNumbner boolValue];;
 //boolNumber实际是一个NSCFBoolLean对象，charNumbner实际是一个NSCFNumber对象。基础框架中抽象工厂的的此种特点被称为类簇，是抽象工厂的一种形式。intValue，boolValue是进行重载以返回实际值（产品）
 */
@end
