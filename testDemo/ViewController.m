//
//  ViewController.m
//  testDemo
//
//  Created by aiss on 2020/6/14.
//  Copyright © 2020 BJ3390. All rights reserved.
//

#import "ViewController.h"
//#import "markProtocol.h"
#import "BackGroundV.h"
#import "TestObject.h"

typedef void (^YZBlock)(void);

@interface ViewController ()
@property (nonatomic, strong) dispatch_semaphore_t  semaphore;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    BackGroundV *v = [[BackGroundV alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:v];
    _semaphore = dispatch_semaphore_create(1);
    
//    for (int i = 0; i<10; i++) {
//        //NSLog(@"mainIndex=%d",i);
//        dispatch_async(dispatch_get_global_queue(DISPATCH_TARGET_QUEUE_DEFAULT, 0), ^{
//
//            long timeOut =  dispatch_semaphore_wait(_semaphore, dispatch_time(DISPATCH_TIME_NOW, 3000*NSEC_PER_MSEC));
//            NSLog(@"index=%d",i);
//            NSLog(@"timeOut==%ld",timeOut);
//            NSLog(@"%@",[NSThread currentThread]);
//            //dispatch_semaphore_signal(_semaphore);
//        });
//    }
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)3*NSEC_PER_SEC), dispatch_get_main_queue(), ^{
//        long timeout = dispatch_semaphore_wait(_semaphore, 3);
//        NSLog(@"__ %ld",timeout);
//    });
    
    [self testBlock];
}



- (void)testBlock {
    
    YZBlock block;
            {
                TestObject *person = [[TestObject alloc]init];
                person.age = 10;

                TestObject *weakPerson = person;
                
                int age = 6;
                block = ^{
                    NSLog(@"---------%ld", person.age);
                };
                
                 NSLog(@"block.class = %@",[block class]);
            }
           
            NSLog(@"block销毁");
}

@end
