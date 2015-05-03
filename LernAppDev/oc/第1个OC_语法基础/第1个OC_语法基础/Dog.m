//
//  Dog.m
//  第1个OC_语法基础
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (id) init{
    return [self initWithID:0 andAge:0 andPrice:0.0];
}

- (id) initWithID:(int)newID{
    return [self initWithID:newID andAge:0 andPrice:0.0];

}

- (id) initWithID:(int)newID andAge:(int)newAge{
    return [self initWithID:newID andAge:newAge andPrice:0.0];
}

- (id) initWithID:(int)newID andAge:(int)newAge andPrice:(float)newPrice{
    self= [super init];
    if(self){
        [self setIID:newID andAge:newAge andPrice:newPrice];
    }
    return self;
}

//get set函数
- (void) setID:(int)newID{
    ID=newID;
}
- (int) getID{
    return  ID;
}

- (void) setAge:(int)newAge{
    age=newAge;
}
- (int) getAge{
    return age;
}

- (void) setPrice:(float)newPrice{
    price=newPrice;
}
- (float) getPrice{
    return price;
}

- (void) setID:(int)newID andAge:(int)newAge{
    [self setID:newID];
    [self setAge:newAge];
}
- (void) setIID:(int)newID andAge:(int)newAge andPrice:(float)newPrice{
    [self setID:newID];
    [self setAge:newAge];
    [self setPrice:newPrice];
}
@end
