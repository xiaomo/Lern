//
//  MyImageView.h
//  第16个Swift_调用OC
//
//  Created by MCUer on 15/5/2.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MyImageView : UIImageView{
    id _target;
    SEL _sel;
}

- (void) addTarget:(id)target withSelector:(SEL)sel;
@end
