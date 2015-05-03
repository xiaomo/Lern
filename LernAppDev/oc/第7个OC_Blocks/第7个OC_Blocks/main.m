//
//  main.m
//  第7个OC_Blocks
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (^SumBlockT) (int a,int b);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //第一个block，没有参数的blocks
        void (^myblocks)(void)= NULL;
        myblocks=^(void){
            NSLog(@"in myblocks");
        };
        myblocks();
        
        //第二个bolck2，带参数blocks
        int (^myblock2)(int a,int b)=^(int a,int b){
            return a+b;
        };
        NSLog(@"myblock2 ret:%d",myblock2(2,3));
        
        //第3个block，使用外部变量
        __block int sum=0;
        int (^myblock3) (int a,int b)=^(int a,int b){
            sum=a+b;
            return  3;
        };
        myblock3(10,20);
        NSLog(@"sum is %d",sum);
        
        //第4个bulocks,通过typedef
        SumBlockT myBlocks4 = ^(int a,int b){
            return a+b;
        };
        NSLog(@"myBlocks4 ret:%d",myBlocks4(20,30));
    }
    return 0;
}
