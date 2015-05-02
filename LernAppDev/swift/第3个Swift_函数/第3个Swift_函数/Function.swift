//
//  Function.swift
//  第3个Swift_函数
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

func testConcat(v1:String,v2:String)->String{
    return "\(v1) and \(v2)";
}


func testConcat2(v1:String,addValue v2:String,addNumber v3:Int)->String{
    return "\(v1) and \(v2) and \(v3)";
}

func getInfo()->(String,String,String){
    return ("return1","return2","return3");
}

func add()->Int{
    var y=1;
    func addsun(){
        y += 10;
    }
    addsun();
    return y;
}

func getFuncPointer()->(Int->Int){
    
    func addOne(num:Int)->Int{
        return num+1;
    }
    return addOne;
}
func testFunction(){
    println("开始测试函数");
    
    //1 普通函数
    let v=testConcat("hello","world")
    println("v is \(v)");
    
    //带标签的函数
    let v2=testConcat2("hello",addValue:"world",addNumber:100);
    println("v2 is \(v2)");
    
    //有多个返回值的函数
    let (v3,v4,v5) = getInfo();
    println("\(v3) \(v4) \(v5)")
    
    //函数内嵌套函数
    let v6=add();
    println("v6 is \(v6)");

    //返回函数指针的函数
    let funcPointer = getFuncPointer();
    var v7=funcPointer(100);
    println("v7 is \(v7)");
    
    //数组,函数指针作为参数
    var arr=[20,3,4234,425,424,424]
    var v8 = hasAnyMatch(arr,lessThanTen);
    println("v8 is \(v8)");
}

func hasAnyMatch(list : [Int],condition:Int->Bool)->Bool{
    for item in list{
        if(condition(item)){
            return true;
        }
    }
    return false;
}

func lessThanTen(number: Int)->Bool{
    return number<=10;
}