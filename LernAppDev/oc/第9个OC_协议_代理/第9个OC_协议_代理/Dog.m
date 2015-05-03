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
@synthesize delegate=_delegate;

- (id) init{
    self = [super init];
    if(self){
        _timer=[NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];
        _breakCount=0;
    }
    return self;
}

- (void) updateTimer:(id)arg{
    _breakCount++;
    NSLog(@"break in dog");
    [_delegate bark:self count:_breakCount];
}

- (void) dealloc{
    _timer=nil;
    _delegate=nil;
    NSLog(@"Dog dealloc");
}
@end
