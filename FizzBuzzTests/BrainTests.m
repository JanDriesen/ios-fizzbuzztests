//
//  BrainTests.m
//  FizzBuzzTests
//
//  Created by Jan Niklas Driesen on 11.04.18.
//  Copyright © 2018 Driesengard. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "JNDBrain.h"

@interface BrainTests : XCTestCase

@property (nonatomic, strong) JNDBrain *brain;

@end

@implementation BrainTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.brain = [[JNDBrain alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    
    self.brain = nil;
}

- (void)testIsDivisibleByThree
{
    BOOL result = [self.brain isDivisibleByThree:@3];
    XCTAssertEqual(result, true);
}

- (void)testIsDivisibleByFive
{
    BOOL result = [self.brain isDivisibleByFive:@5];
    XCTAssertEqual(result, true);
}

- (void)testIsDivisibleByThreeAndFive
{
    BOOL result = [self.brain isDivisibleByThreeAndFive:@15];
    XCTAssertEqual(result, true);
}

- (void)testIsFizz
{
    NSString *result = [self.brain check:@3];

    BOOL isFizz = [result isEqualToString:@"Fizz"];
    XCTAssertEqual(isFizz, true);
}

- (void)testIsBuzz
{
    NSString *result = [self.brain check:@5];
    
    BOOL isBuzz = [result isEqualToString:@"Buzz"];
    XCTAssertEqual(isBuzz, true);
}

- (void)testIsFizzBuzz
{
    NSString *result = [self.brain check:@15];
    
    BOOL isFizzBuzz = [result isEqualToString:@"FizzBuzz"];
    XCTAssertEqual(isFizzBuzz, true);
}

@end
