//
//  Person.m
//  UnitTestDemo
//
//  Created by admin on 2019/1/31.
//  Copyright © 2019年 admin. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (void)loadPersonAsync:(void(^)(Person *person))completion {
    // 异步执行
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        // 模拟网络请求，延迟2秒
        [NSThread sleepForTimeInterval:2.0f];
        Person *person = [[Person alloc] init];
        person.id = 1;
        person.name = @"张三";
        person.age = 20;
        
        // 回到主线程
        dispatch_async(dispatch_get_main_queue(), ^{
            if (nil != completion) {
                completion(person);
            }
        });
    });
}

@end

