//
//  Block________Tests.m
//  Block使用（保存代码）Tests
//
//  Created by 抬头看见柠檬树 on 2017/2/15.
//  Copyright © 2017年 csip. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Block________Tests : XCTestCase

@end

@implementation Block________Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
