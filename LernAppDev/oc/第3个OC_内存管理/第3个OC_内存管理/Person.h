//
//  Person.h
//  第3个OC_内存管理
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject{
    Dog *_dog;
}

- (void) setDog:(Dog *)newDog;
- (Dog *) dog;
@end
