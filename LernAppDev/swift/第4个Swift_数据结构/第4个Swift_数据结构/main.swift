//
//  main.swift
//  第4个Swift_数据结构
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("数据结构!")
//1 String
var str="hello";
println("str is \(str)"+String(100));

//2 数组
var p = ["ios","android"];
p.append("windows phone");
//p[4]="blackberry"; 错误，会越界
println("p is \(p)");

//3 字典
var p2:Dictionary = [
    "name":"moming",
    "age":"35",
    "score":"100"
];
for (key,value) in p2{
    println("key \(key)--> value \(value)");
}
p2["sex"] = "f";
for (key,value) in p2{
    println("key \(key)--> value \(value)");
}
let p3=p2.keys;
for key in p3{
    println("key is \(key)");
}


//4 元组
let numbers = [
    "ios":[1,2,3,4,5],
    "android":[100,55,55,4,6,55,77]
];

var sum = 0;
for(key,value) in numbers{
    for i in value{
        sum += i;
    }
}
println("sum :\(sum)");