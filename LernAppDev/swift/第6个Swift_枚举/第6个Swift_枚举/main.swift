//
//  main.swift
//  第6个Swift_枚举
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("枚举!")

//定义枚举
enum Direction{
    case North;
    case South;
    case East;
    case West;
}

enum Direction2{
    case North,South,East,West;
}

var d=Direction.North;
d = .South;

var d2 : Direction2 = .South;

switch d2{
case .North:
    println("north");
case .South:
    println("south");
default:
    println("other");
}

enum Course : Int {
    case Android=1,IOS,WindoesPhone,Symbian;
}

var c:Course = Course.IOS;
let v=c.rawValue;

println("v is \(v)");

var c2 = Course(rawValue:4);
if(c2 == Course.Symbian){
    println("is symbian");
}
