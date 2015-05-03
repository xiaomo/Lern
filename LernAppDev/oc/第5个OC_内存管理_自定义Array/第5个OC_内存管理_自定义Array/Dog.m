//
//  Dog.m
//  第3个OC_内存管理
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "Dog.h"

@implementation Dog

@synthesize ID=_ID;
- (void) dealloc{
    NSLog(@"Dog dealloc");
    [super dealloc];
}
@end
