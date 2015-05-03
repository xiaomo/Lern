//
//  Dog.h
//  第1个OC_语法基础
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject{
@protected
    int _ID;
@public
    int _age;
@private
    float _price;
}

//构造函数
- (id) init;
- (id) initWithID:(int)newID;
- (id) initWithID:(int)newID andAge:(int)newAge;
- (id) initWithID:(int)newID andAge:(int)newAge andPrice:(float)newPrice;

//getter setter函数

//默认属性:readwrite,assign,nonatomic,getter=ID,setter=setID:
@property(readwrite,assign,nonatomic,getter=ID,setter=setID:) int ID;//等价下面2行
//- (void) setID:(int)newID;
//- (int) ID;

@property int age;//等价下面2行
//- (void) setAge:(int)newAge;
//- (int) age;

@property float price;//等价下面2行
//- (void) setPrice:(float)newPrice;
//- (float) price;

- (void) setID:(int)newID andAge:(int)newAge;
- (void) setIID:(int)newID andAge:(int)newAge andPrice:(float)newPrice;

@end
