//
//  NSString+ReverseString.m
//  第10个OC_Category
//
//  Created by MCUer on 15/5/17.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "NSString+ReverseString.h"

@implementation NSString (ReverseString)

- (id) reverseString
{
    NSUInteger len=[self length];
    NSMutableString *retStr= [NSMutableString stringWithCapacity:len];
    while (len>0) {
        unichar c=[self characterAtIndex:--len];
        [retStr appendString:[NSString stringWithFormat:@"%C",c]];
    }
    return retStr;
}

@end
