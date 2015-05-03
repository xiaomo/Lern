//
//  Person.m
//  第3个OC_内存管理
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize dog=_dog;//等于下面的n行
//- (void) setDog:(Dog *)newDog{
//    if(newDog!=_dog){
//        [_dog release];
//        _dog=[newDog retain];
//    }
//}
//- (Dog *) dog{
//    return _dog;
//}


- (void) dealloc{
    //[_dog release],_dog=nil;
    self.dog=nil;
    NSLog(@"Person dealloc");
    [super dealloc];
}
@end
