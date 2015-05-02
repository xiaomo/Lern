//
//  main.swift
//  第8个Swift_类
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("类!")

class Person{
    //成员属性,默认是public的
    var age:Int = 0;
    var name:String?;
    
    //构造方法
    init(){
        self.age=5;
        self.name="xiaoming";
    }
    
    init(age:Int,name:String){
        self.age=age;
        self.name=name;
    }
    
    //析构函数
    deinit{
        
    }
    
    //成员方法
    func getAge()->Int{
        return age;
    }
    func getName()->String{
        return name!;
    }
    //类方法
    class func MaxAge()->Int {
        return 200;
    }
    
    class func person()->Person {
        return Person();
    }
}

func testClass(){
    //调用类方法
    var v = Person.MaxAge();
    println("Max age:\(v)");
    
    var xiaoming=Person();
    xiaoming.age = 100;
    println("xiaomo age:\(xiaoming.age)");
    
    var moming=Person(age: 50, name: "MoMing");
    println("moming is:\(moming)");

    
}

testClass();