//
//  main.swift
//  第5个Swift_闭包
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("闭包!")

var arr=[20,44,54,83,23];

//实例1
var v1 = hasClosureMatch(arr,400,{
    (num:Int,value:Int)->Bool in
    return num>=value;
});

println("v1 is \(v1)");

//实例2
var v2 = hasClosureMatch(arr,400,{
    (num:Int,value:Int)->Bool in
    return num<value;
});
println("v2 is \(v2)");

//用类似shell的方式处理参数
var v3 = hasClosureMatch(arr,400,{
    return $0<$1;
});
println("v3 is \(v3)");