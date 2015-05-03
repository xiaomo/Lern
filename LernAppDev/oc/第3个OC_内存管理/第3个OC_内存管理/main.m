//
//  main.m
//  第3个OC_内存管理
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Person.h"

/**
 *对于手动内存管理,只有下面三种情况会增加引用计数
 *1 alloc
 *2 copy[WithZone:]或者mutableCopy[WithZone:]
 *3 retain
 *只有使用[auto]release会减少引用计数
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Dog *dog1=[[Dog alloc]init];
        dog1.ID=1;
        
        //1 alloc后，dog1引用计数是1
        NSLog(@"dog1 retaincount:%ld",dog1.retainCount);
        
        //2 setDog后，dog1引用计数是2
        Person *xiaoli= [[Person alloc]init];
        [xiaoli setDog:dog1];
        [xiaoli setDog:dog1];
        [xiaoli setDog:dog1];
        [xiaoli setDog:dog1];
        NSLog(@"dog1 retaincount:%ld",dog1.retainCount);
        
        //3 释放小丽后，dog1引用计数是1。xiaoli的引用计数为0，调用小丽的dealloc
        [xiaoli release];
        NSLog(@"dog1 retaincount:%ld",dog1.retainCount);
        
        //4 释放dog1后，dog1引用计数是0。调用dog1的dealloc
        [dog1 release];
    }
    return 0;
}
