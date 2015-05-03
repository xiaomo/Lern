//
//  Dog.h
//  第3个OC_内存管理
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;

@protocol DogBark <NSObject>
-(void) bark:(Dog *)thisDog count:(int)count;
@end

@interface Dog : NSObject{
    NSTimer *_timer;
    int _breakCount;
    int _ID;
    __weak id<DogBark> _delegate;
}
@property int ID;
@property (weak) id<DogBark> delegate;
@end