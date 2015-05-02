//
//  main.swift
//  第2个Swift_控制语句
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation

println("控制语句!")
var score = 80;
var scoreArr = [90,35,45,24,88,42,94];

var max=0;
var min=0;
var avg=0.0;
var sum=0.0;


//遍历方法1
for item in scoreArr{
    println("-->\(item)");
    sum += Double(item);
    if(min==0 || min>item){
        min=item;
    }
    if(max==0||max<item){
        max=item;
    }
}
avg=sum/Double(scoreArr.count);
println("for in:sum is \(sum) ,avg is \(avg)");
println("for in:min is \(sum) ,max is \(max)");

//遍历方法2
max=0;
min=0;
avg=0.0;
sum=0.0;
for(var i=0;i<scoreArr.count;i++){
    //println("-->\(scoreArr[i])");
    sum += Double(scoreArr[i]);
    if(min==0 || min>scoreArr[i]){
        min=scoreArr[i];
    }
    if(max==0||max<scoreArr[i]){
        max=scoreArr[i];
    }
}
avg=sum/Double(scoreArr.count);
println("for:sum is \(sum) ,avg is \(avg)");
println("for:min is \(sum) ,max is \(max)");

//遍历方法3
max=0;
min=0;
avg=0.0;
sum=0.0;

var index=0;
do{
    //println("-->\(scoreArr[index])");
    sum += Double(scoreArr[index]);
    if(min==0 || min>scoreArr[index]){
        min=scoreArr[index];
    }
    if(max==0||max<scoreArr[index]){
        max=scoreArr[index];
    }
    index++;
}while(index<scoreArr.count);

avg=sum/Double(scoreArr.count);
println("do while:sum is \(sum) ,avg is \(avg)");
println("do while:min is \(sum) ,max is \(max)");

//遍历方法4
max=0;
min=0;
avg=0.0;
sum=0.0;
index = 0;
while(index<scoreArr.count){
    //println("-->\(scoreArr[index])");
    sum += Double(scoreArr[index]);
    if(min==0 || min>scoreArr[index]){
        min=scoreArr[index];
    }
    if(max==0||max<scoreArr[index]){
        max=scoreArr[index];
    }
    index++;
}
avg=sum/Double(scoreArr.count);
println("while: is \(sum) ,avg is \(avg)");
println("while:min is \(sum) ,max is \(max)");

//switch
let appType = "ios"
switch appType{
    case "ios":
        println("ios");
        fallthrough;//让继续往下走，默认不往下走，也就是默认有break的意义。
    case "android":
        println("android");
    case "winphone":
        println("winphone");
    default:
        println("default");
}
