//
//  MacroTest.m
//  UnitTestDemoTests
//
//  Created by admin on 2019/1/31.
//  Copyright © 2019年 admin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../UnitTestDemo/Class/Macro.h"

@interface MacroTest : XCTestCase

@end

@implementation MacroTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)test_Mult {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSInteger result = mult(2, 3);
    XCTAssert((result == 6), @"乘法计算错误");
    
    result = mult(2 + 2, 3);
    XCTAssert((result == 12), @"乘法计算错误");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
