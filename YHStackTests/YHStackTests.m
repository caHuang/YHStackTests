//
//  YHStackTests.m
//  YHStackTests
//
//  Created by Andy Huang on 1/23/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "YHStack.h"

@interface YHStackTests : XCTestCase

@property (nonatomic, strong) YHStack *stack;

@end

@implementation YHStackTests

- (void)setUp {
  [super setUp];
  self.stack = [[YHStack alloc] init];
}

- (void)tearDown {
  [super tearDown];
}

- (void)testExample {
  XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
  [self measureBlock:^{
  }];
}

- (void)testStackExist {
  XCTAssertNotNil([YHStack class], @"YHStack class should exist.");
}

- (void)testStackObjectCanBeCreated {
  XCTAssertNotNil(self.stack, @"YHStack object can be created.");
}

- (void)testPushANumberAndGetIt {
  [self.stack push:2.3];

  double topNumber = [self.stack top];
  XCTAssertEqual(topNumber, 2.3, @"YHStack should can be pushed and has that top value.");
  
  [self.stack push:4.6];
  topNumber = [self.stack top];
  XCTAssertEqual(topNumber, 4.6, @"Top value of YHStack should be the last num pushed into it");
}

@end
