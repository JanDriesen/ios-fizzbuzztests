//
//  JNDBrain.h
//  FizzBuzz
//
//  Created by Jan Niklas Driesen on 11.04.18.
//  Copyright © 2018 Driesengard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JNDBrain : NSObject

- (BOOL)isDivisibleByThree:(NSNumber *)number;
- (BOOL)isDivisibleByFive:(NSNumber *)number;
- (BOOL)isDivisibleByThreeAndFive:(NSNumber *)number;

- (NSString *)check:(NSNumber *)number;

@end
