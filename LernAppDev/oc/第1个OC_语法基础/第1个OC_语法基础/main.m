//
//  main.m
//  第1个OC_语法基础
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Dog *dog1=[[Dog alloc] initWithID:2 andAge:10 andPrice:800.2];
        [dog1 setID:1];
        NSLog(@"dog1 ,ID:%d,age:%d,price:%f",[dog1 getID],[dog1 getAge],[dog1 getPrice]);
        
    }
    return 0;
}
