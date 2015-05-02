//
//  main.swift
//  第10个Swift_协议
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("协议的使用")

//定义一个协议,继承自基协议，也可以不继承
@objc protocol SortProtocol:NSObjectProtocol{
    func compare(value:Int)->Bool;
    optional func compare2()->Bool;
}

protocol SortProtocol2{
    
}

protocol SortProtocol3{
    
}

//实现协议
class ClassA:NSObject,SortProtocol,SortProtocol2,SortProtocol3 {
    var age = 0;
    init(age:Int) {
        self.age = age;
    }
    func compare(value:Int)->Bool{
        if(age>value){
            return true;
        }else{
            return false;
        }
    }
}

//使用
let c = ClassA(age:100);
let ret  = c.compare(50);
println("ret is \(ret)");

let p = c as SortProtocol;
println("ret is \(p.compare(200))");

println("ret is \(p.compare2?())");


