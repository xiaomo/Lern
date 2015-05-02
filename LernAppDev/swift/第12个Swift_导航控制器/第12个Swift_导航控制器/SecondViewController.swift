//
//  SecondViewController.swift
//  第12个Swift_导航控制器
//
//  Created by MCUer on 15/5/2.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation
import UIKit

//定义一个协议

protocol FontSizeChangeDelegate:NSObjectProtocol{
    func fontSizeChange(controler:SecondViewController,fontSize:Int);
}

class SecondViewController: UIViewController {
    
    var fontSize:Int = 20;
    
    var delegate:FontSizeChangeDelegate?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="第二个页面";
        let preItem = UIBarButtonItem(title: "上一页", style: .Plain, target: self, action: "prePage");
        self.navigationItem.leftBarButtonItem = preItem;
        
        //创建一个Button
        var myButton = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 44));
        myButton.backgroundColor = UIColor.blueColor();
        myButton.setTitle("增大", forState:UIControlState.Normal);
        myButton.addTarget(self, action: "onClick:", forControlEvents:.TouchUpInside);
        self.view.addSubview(myButton);
        
    }
    
    func prePage(){
        self.navigationController?.popToRootViewControllerAnimated(true);
    }
    
    func onClick(sender:UIButton){
        fontSize++;
        if((delegate) != nil){
            delegate?.fontSizeChange(self, fontSize: fontSize);
        }
    }
}