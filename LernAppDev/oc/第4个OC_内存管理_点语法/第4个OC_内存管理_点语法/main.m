//
//  main.m
//  第4个OC_内存管理_点语法
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Dog *dog1=[[Dog alloc]init];
        dog1.ID=1;
        
        //1 alloc后，dog1引用计数是1
        NSLog(@"dog1 retaincount:%ld",dog1.retainCount);
        
        //2 setDog后，dog1引用计数是2
        Person *xiaoli= [[Person alloc]init];
        xiaoli.dog=dog1;
        [xiaoli setDog:dog1];
        xiaoli.dog=dog1;
        xiaoli.dog=dog1;
        xiaoli.dog=dog1;
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
