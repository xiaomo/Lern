//
//  MyArray.h
//  第5个OC_内存管理_自定义Array
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyArray : NSObject
{
    NSUInteger _count;
    id _objs[512];
    
}
@property (assign,readonly) NSUInteger count;

- (void) addObject:(id)object;
- (id) objectAtIndex:(NSUInteger)index;
- (void) removeObjectAtIndex:(NSUInteger)index;
- (void) removeAll;
@end
