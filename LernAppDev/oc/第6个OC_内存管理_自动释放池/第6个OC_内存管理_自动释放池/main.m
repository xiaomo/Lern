//
//  main.m
//  第6个OC_内存管理_自动释放池
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

//autorelease:把对象放到最近的栈顶自动释放池,不能再调用release

int main(int argc, const char * argv[]) {
    
    //autoreleasepool写法1
    @autoreleasepool {
        Dog *dog1=[[[Dog alloc]init]autorelease];
        dog1.ID=1;
        //[dog1 release]; 不能再调用release
        
        //autoreleasepool写法2
        NSAutoreleasePool *pool= [[NSAutoreleasePool alloc]init];
        Dog *dog2=[Dog dog];
        dog2.ID=2;
        [pool release];
        
        //dog2先释放，dog1后释放
    }
    
    return 0;
}
