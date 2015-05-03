//
//  main.m
//  第2个OC_点语法
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
        dog1.ID=1;
        dog1.age=11;
        dog1.price=90;
        NSLog(@"dog1 ,ID:%d,age:%d,price:%f",dog1.ID,dog1.age,dog1.price);
        
        [dog1 setID:2];
        [dog1 setAge:22];
        [dog1 setPrice:10];
        NSLog(@"dog1 ,ID:%d,age:%d,price:%f",[dog1 ID],[dog1 age],[dog1 price]);
        
    }
    return 0;
}
