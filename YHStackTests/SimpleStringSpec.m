//
//  SimpleStringSpec.m
//  YHStack
//
//  Created by Andy Huang on 1/29/15.
//  Copyright 2015 Andy Huang. All rights reserved.
//

#import <Kiwi/Kiwi.h>

SPEC_BEGIN(SimpleStringSpec)

describe(@"SimpleString", ^{
  context(@"when assigned to 'Hello world'", ^{
    NSString *greeting = @"Hello world";
    it(@"should exist", ^{
      [[greeting shouldNot] beNil];
    });
    it(@"should equal to 'Hello world'" , ^{
      [[greeting should] equal:@"Hello world"];
    });
  });
});

SPEC_END
