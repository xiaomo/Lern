//
//  Closure.swift
//  第5个Swift_闭包
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

func hasClosureMatch(arr: [Int],value:Int,cb:(num:Int,value:Int)->Bool)->Bool{
    for item in arr{
        if(cb(num:item,value:value)){
            return true;
        }
    }
    return false;
}