//
//  main.m
//  第5个OC_内存管理_自定义Array
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "MyArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //使用NSMutableArray
        
        NSMutableArray *array= [[NSMutableArray alloc] init];
        for (int i=0; i<5; i++) {
            Dog * dog=[[Dog alloc]init];
            dog.ID=i;
            [array addObject:dog];
            [dog release];
        }
        for (Dog * dog in array) {
            NSLog(@"NSMutableArray,dog id:%d",dog.ID);
        }
        [array release];
        
        //使用自定MyArray

        MyArray *myArray= [[MyArray alloc] init];
        for (int i=0; i<5; i++) {
            Dog * dog=[[Dog alloc]init];
            dog.ID=i;
            [myArray addObject:dog];
            [dog release];
        }
        for (int i=0; i<5; i++) {
            Dog * dog=[myArray objectAtIndex:i];
            NSLog(@"MyArray,dog id:%d",dog.ID);
        }
        [myArray release];
    }
    return 0;
}
