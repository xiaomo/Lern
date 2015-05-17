//
//  main.m
//  第10个OC_Category
//
//  Created by MCUer on 15/5/17.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+ReverseString.h"


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSLog(@"categary:");
        NSString *string=@"中国共产党万岁hello";
        NSLog(@"%@",[string reverseString]);
    }
    
    return 0;
}
