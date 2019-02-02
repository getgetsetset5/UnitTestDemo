//
//  CalculatorTest.m
//  UnitTestDemoTests
//
//  Created by admin on 2019/1/31.
//  Copyright © 2019年 admin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../UnitTestDemo/Class/Calculator.h"

@interface CalculatorTest : XCTestCase
@property (nonatomic, strong) Calculator *calculator;
@end

@implementation CalculatorTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSLog(@"setUp");
    
    self.calculator = [[Calculator alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    NSLog(@"tearDown");
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"testExample");
}

- (void)test_add {
    NSInteger result = [self.calculator add:10 b:20];
    XCTAssert((result == 30), @"加法计算错误");
}

- (void)test_mult {
    NSInteger result = [self.calculator mult:2 b:5];
    XCTAssert((result == 10), @"乘法计算错误");
    
    result = [self.calculator mult:2 + 2 b: 3];
    XCTAssert((result == 12), @"乘法计算错误");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
