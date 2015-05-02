//
//  main.swift
//  第9个Swift_GetterSetter
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("Getter And Setter!")

struct Point {
    var x=0.0,y=0.0;
}

struct Size {
    var width=0.0,height=0.0;
}

struct Rect {
    var origin = Point();
    //@lazy
    var size = Size();
    
    //传统方法
    func getCenter()->(Double,Double){
        return(origin.x+size.width/2,origin.y+size.height/2);
    }
    //Getter,Setter
    var center:Point{
        get{
            return Point(x:origin.x+size.width/2,y:origin.y+size.height/2);
        }
        set(newCenter){
            origin.x = newCenter.x - size.width/2;
            origin.y = newCenter.y - size.height/2;
        }
    };
}

var rect=Rect(origin:Point(x:1,y:3),size:Size(width:5,height:67));
var (x,y)=rect.getCenter();
println("x ,y=(\(x),\(y))");

var center = rect.center;
rect.center=Point(x:200,y:400);

println("x ,y=(\(rect.origin.x),\(rect.origin.y))");

