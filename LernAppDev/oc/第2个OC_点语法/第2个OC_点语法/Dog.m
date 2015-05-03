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

//getter setter函数
@synthesize ID=_ID;//等价下面6行
//- (void) setID:(int)newID{
//    _ID=newID;
//}
//- (int) ID{
//    return  _ID;
//}

@synthesize age=_age;//等价下面6行
//- (void) setAge:(int)newAge{
//    _age=newAge;
//}
//- (int) age{
//    return _age;
//}

@synthesize price=_price;//等价下面6行
//- (void) setPrice:(float)newPrice{
//    _price=newPrice;
//}
//- (float) price{
//    return _price;
//}

- (void) setID:(int)newID andAge:(int)newAge{
    self.ID=newID;
    self.age=newAge;
}
- (void) setIID:(int)newID andAge:(int)newAge andPrice:(float)newPrice{
    self.ID=newID;
    self.age=newAge;
    self.price=newPrice;
}
@end
