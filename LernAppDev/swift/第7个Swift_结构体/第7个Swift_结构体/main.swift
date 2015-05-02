//
//  main.swift
//  第7个Swift_结构体
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("结构体测试")

//与c的结构体不同，可以有函数,构造函数，没有析构函数
struct S {
    var x=0;
    var y=0;
    
    //定义构造函数
    init(){
        //空构造函数
        NSLog("in init");
    }
    
    init(x:Int,y:Int){
        self.x=x;
        self.y=y;
        NSLog("in init(x:,y:)");
    }
    
    //_
    init(_ x:Int,_ y:Int){
        self.x=x;
        self.y=y;
        NSLog("in init(x:,y:)");
    }
    
    func getCenter()->Int{
        return (x+y)/2;
    }
    
    //mutating 让方法可以修改里面的变量
    mutating func addOffset(deltaX:Int,deltaY:Int){
        x+=deltaX;
        y+=deltaY;
    }
};

func test(){
    //自定义构造函数，创建结构体
    var s=S(x: 100, y: 200);
    println("s.x =\(s.x),s.y =\(s.y)");
    
    //默认构造函数，创建结构体
    var s2=S();
    s2.x=100;
    s2.y=300;
    println("s2.x =\(s2.x),s2.y =\(s2.y)");
    
    //调用自定义构造函数，不带标签
    var s3=S(100,600);
    println("s3.x =\(s3.x),s3.y =\(s3.y),center is \(s3.getCenter())");
    
    //调用普通函数
    s3.addOffset(100, deltaY: 100);
    println("s3.x =\(s3.x),s3.y =\(s3.y),center is \(s3.getCenter())");

}

test();

