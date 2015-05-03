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

+ (id) dog{
    return [[[Dog alloc]init] autorelease];
}
- (void) dealloc{
    NSLog(@"Dog dealloc:%d",_ID);
    [super dealloc];
}
@end
