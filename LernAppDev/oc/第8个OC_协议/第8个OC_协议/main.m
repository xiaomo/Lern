//
//  main.m
//  第8个OC_协议
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocol.h"
#import "MyTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //协议对象的使用
        MyTest *myTest= [[MyTest alloc]init];
        [myTest printValue:1 addValue:2];
        SEL sel=@selector(print:);
        if ([myTest respondsToSelector:sel]) {
            [myTest print:10];
        }
        [myTest showInfo];
        
        //用协议定义对象
        id<MyProtocol> myProtocol= [[MyTest alloc]init];
        [myProtocol printValue:1 addValue:2];
        SEL sel2=@selector(print:);
        if ([myProtocol respondsToSelector:sel2]) {
            [myProtocol print:10];
        }
    }
    return 0;
}
