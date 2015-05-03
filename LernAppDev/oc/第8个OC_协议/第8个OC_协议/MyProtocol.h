//
//  MyProtocol.h
//  第8个OC_协议
//
//  Created by MCUer on 15/5/3.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject>

@optional
- (void) print:(int) value;

@required
- (void) printValue:(int) value addValue:(int) value2;

@end
