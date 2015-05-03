//
//  MyArray.m
//  第5个OC_内存管理_自定义Array
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "MyArray.h"

@implementation MyArray

@synthesize count=_count;

- (id) init{
    self=[super init];
    if(self){
        _count=0;
    }
    return self;
}

- (void) addObject:(id)object{
    if(_count>=512){
        return ;
    }
    _objs[_count]=[object retain];
    _count++;
    return ;
}
- (id) objectAtIndex:(NSUInteger)index{
    return _objs[index];
}

- (void) removeObjectAtIndex:(NSUInteger)index{
    id obj=_objs[index];
    [obj release];
    _objs[index]=nil;
}

- (void) removeAll{
    for (int i=0; i<_count; i++) {
        [self removeObjectAtIndex:i];
    }
}

- (void) dealloc{
    [self removeAll];
    [super dealloc];
}

@end
