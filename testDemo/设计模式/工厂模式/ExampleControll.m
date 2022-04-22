//
//  ExampleControll.m
//  testDemo
//
//  Created by aiss on 2020/6/26.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "ExampleControll.h"
#import "ExampleView.h"
#import "ExampleAView.h"
#import "ExampleBView.h"

@implementation ExampleControll
- (void)startPrudct {
    
    /*
     定义：定义创建对象的接口，让子类决定实例化哪一个类。工厂方法使得一个类的实例化延迟到其子类。
     */
    ExampleGeneratorA *generatorA = [[ExampleGeneratorA alloc]init];
    ExampleView *A = [generatorA exampleobject];
    
    ExampleGeneratorB *generatorB = [ExampleGeneratorB new];
    ExampleView *B = [generatorB exampleobject];
    
    NSLog(@"%@-%@",A,B);
    /*
     CocoaTouch中应用工厂方法,是一种工厂方法模式的变体。抽象类生成具体子类，而不是用NSNumber的私有子类重载的，而是一种创建对象的便利方式，就NSNumber而言，没有可在别处生成的其他“数字生成器”而是在类级别打包提供了方法以达到类似效果，它们称作类工厂方法
     */
    NSNumber *number = [NSNumber numberWithInt:1];
    NSNumber *number1 = [NSNumber numberWithBool:YES];
    
}
@end
