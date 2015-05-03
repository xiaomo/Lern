//
//  MyTest.m
//  第8个OC_协议
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "MyTest.h"

@implementation MyTest

- (void) showInfo{
    NSLog(@"showInfo");
}

- (void) print:(int) value{

    NSLog(@"print %d",value);
}
- (void) printValue:(int) value addValue:(int) value2{
    NSLog(@"printValue %d,%D",value,value2);
}


@end
