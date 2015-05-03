//
//  Person.m
//  第3个OC_内存管理
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize dog=_dog;

- (id) init{
    self=[super init];
    if(self) {
        _dog=nil;
    }
    return self;
}
- (void) setDog:(Dog *)newDog{
    _dog=newDog;
    _dog.delegate=self;
}

- (Dog *) dog{
    return _dog;
}


- (void) bark:(Dog *)thisDog count:(int)count{
    NSLog(@"dog %d break %d in person",thisDog.ID,count);
}

- (void) dealloc{
    self.dog=nil;
    NSLog(@"Person dealloc");
}
@end
