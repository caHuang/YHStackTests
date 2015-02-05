//
//  YHStackSpec.m
//  YHStack
//
//  Created by Andy Huang on 2/4/15.
//  Copyright 2015 Andy Huang. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "YHStack.h"


SPEC_BEGIN(YHStackSpec)

describe(@"YHStack", ^{
  context(@"when created", ^{
    __block YHStack *stack = nil;
    
    beforeEach(^{
      stack = [[YHStack alloc] init];
    });
    
    afterEach(^{
      stack = nil;
    });
    
    it(@"should have the class YHStack", ^{
      [[[YHStack class] shouldNot] beNil];
    });
    
    it(@"should exist", ^{
      [[stack shouldNot] beNil];
    });
    
    it(@"should be able to push and get top", ^{
      [stack push:2.3];
      [[theValue([stack pop]) should] equal:theValue(2.3)];
      
      [stack push:4.6];
      [[theValue([stack pop]) should] equal:4.6 withDelta:0.001];
    });
    
    it(@"should equal contains 0 element", ^{
      [[stack should] beEmpty];
    });
  });
  
  context(@"When new created and pushed 4.6", ^{
    __block YHStack *stack = nil;
    
    beforeEach(^{
      stack = [[YHStack alloc] init];
      [stack push:4.6];
    });
    
    afterEach(^{
      stack = nil;
    });
    
    it(@"can be poped and the value equals 4.6", ^{
      [[theValue([stack pop]) should] equal:theValue(4.6)];
    });
    
    it(@"should contains 0 element after pop", ^{
      [stack pop];
      [[stack should] beEmpty];
    });
    
    it(@"should raise a exception when pop", ^{
      [[theBlock(^{
        [stack pop];
      }) should] raiseWithName:@"YHStackPopEmptyException"];
    });
  });
  
});

SPEC_END
