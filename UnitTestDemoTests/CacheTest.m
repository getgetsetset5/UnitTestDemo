//
//  CacheTest.m
//  UnitTestDemoTests
//
//  Created by admin on 2019/1/31.
//  Copyright © 2019年 admin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../UnitTestDemo/Class/Cache.h"

@interface CacheTest : XCTestCase
@property (nonatomic, strong) Cache *cache;
@property (nonatomic, strong) NSData *data;
@end

@implementation CacheTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.cache = [[Cache alloc] init];
    NSString *str = @"hello baby";
    self.data = [str dataUsingEncoding: NSUTF8StringEncoding];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        static NSInteger count = 0;
        count++;
        [self.cache cache:self.data];
        NSLog(@"%ld", count);
    }];
    
    [self measureBlock:^{
    }];
}

@end
