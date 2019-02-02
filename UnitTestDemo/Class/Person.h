//
//  Person.h
//  UnitTestDemo
//
//  Created by admin on 2019/1/31.
//  Copyright © 2019年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;

// 异步加载数据
+ (void)loadPersonAsync:(void(^)(Person *person))completion;

@end

NS_ASSUME_NONNULL_END
