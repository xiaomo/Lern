//
//  main.m
//  第9个OC_协议_代理
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *xiaoli =[[Person alloc]init];
        Dog * dog1=[[Dog alloc]init];
        xiaoli.dog=dog1;
        
        while (1) {
            [[NSRunLoop currentRunLoop] run];
        }
        //dog1=nil;
        //xiaoli=nil;
    }
    return 0;
}
