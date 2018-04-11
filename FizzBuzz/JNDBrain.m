//
//  JNDBrain.m
//  FizzBuzz
//
//  Created by Jan Niklas Driesen on 11.04.18.
//  Copyright © 2018 Driesengard. All rights reserved.
//

#import "JNDBrain.h"

@implementation JNDBrain

- (BOOL)is:(NSNumber *)number divisibleBy:(NSNumber *)divisor
{
    return number.integerValue % divisor.integerValue == 0;
}

- (BOOL)isDivisibleByThree:(NSNumber *)number
{
    return [self is:number divisibleBy:@3];
}

- (BOOL)isDivisibleByFive:(NSNumber *)number
{
    return [self is:number divisibleBy:@5];
}

- (BOOL)isDivisibleByThreeAndFive:(NSNumber *)number
{
    BOOL res1 = [self isDivisibleByThree:number];
    BOOL res2 = [self isDivisibleByFive:number];
    
    return res1 && res2;
}

- (NSString *)check:(NSNumber *)number
{
    NSString *result;
    if ([self isDivisibleByThreeAndFive:number]) {
        result = @"FizzBuzz";
    } else if ([self isDivisibleByFive:number]) {
        result = @"Buzz";
    } else if ([self isDivisibleByThree:number]){
        result = @"Fizz";
    } else {
        result = @"Meeh";
    }
    
    NSLog(@"[%s] - %@", __PRETTY_FUNCTION__, result);
    return result;
}

@end
