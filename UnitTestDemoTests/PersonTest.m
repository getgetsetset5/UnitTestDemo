//
//  PersonTest.m
//  UnitTestDemoTests
//
//  Created by admin on 2019/1/31.
//  Copyright © 2019年 admin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../UnitTestDemo/Class/Person.h"

// 异步测试
@interface PersonTest : XCTestCase

@end

@implementation PersonTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)test_loadPersonAsync {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"异步加载 Person"];
    
    [Person loadPersonAsync:^(Person * _Nonnull person) {
        XCTAssertNotNil(person.name, @"名字不能为空");
        XCTAssert(person.age > 0, @"年龄不正确");
        
        // 标注预期达成
        [expectation fulfill];
    }];
    
    // 等待 5s 期望预期达成
    [self waitForExpectationsWithTimeout:5 handler:nil];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
