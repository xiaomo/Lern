//
//  MyImageView.m
//  第16个Swift_调用OC
//
//  Created by MCUer on 15/5/2.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "MyImageView.h"
#import <第16个Swift_调用OC-Swift.h>

@implementation MyImageView

- (void) addTarget:(id)target withSelector:(SEL)sel{
    _target=target;
    _sel=sel;
    self.userInteractionEnabled = YES;
    
    //oc调用swift
    TestSwift * ts= [[TestSwift alloc] init];
    [ts someFunc];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    if(_target){
        [_target performSelector:_sel withObject:self];
    }
}
@end
