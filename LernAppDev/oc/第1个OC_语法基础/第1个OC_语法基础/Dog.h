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
    int ID;
@public
    int age;
@private
    float price;
}

//构造函数
- (id) init;
- (id) initWithID:(int)newID;
- (id) initWithID:(int)newID andAge:(int)newAge;
- (id) initWithID:(int)newID andAge:(int)newAge andPrice:(float)newPrice;

//get set函数
- (void) setID:(int)newID;
- (int) getID;

- (void) setAge:(int)newAge;
- (int) getAge;

- (void) setPrice:(float)newPrice;
- (float) getPrice;

- (void) setID:(int)newID andAge:(int)newAge;
- (void) setIID:(int)newID andAge:(int)newAge andPrice:(float)newPrice;
@end
