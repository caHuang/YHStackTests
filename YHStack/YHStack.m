//
//  YHStack.m
//  YHStack
//
//  Created by Andy Huang on 1/23/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "YHStack.h"

@interface YHStack ()

@property (nonatomic, strong) NSMutableArray *numbers;

@end

@implementation YHStack

- (instancetype)init {
  self = [super init];
  if (self) {
    self.numbers = [[NSMutableArray alloc] init];
  }
  return self;
}

- (void)push:(double)num {
  [self.numbers addObject:@(num)];
}

- (double)top {
  return [self.numbers.lastObject doubleValue];
}

- (double)pop {
  if (self.numbers.count == 0) {
    [NSException raise:@"YHStackPopEmptyException" format:@"Can not pop an empty stack."];
  }
  
  double result = [self top];
  [self.numbers removeLastObject];
  return result;
}

- (NSUInteger)count {
  return self.numbers.count;
}

@end
