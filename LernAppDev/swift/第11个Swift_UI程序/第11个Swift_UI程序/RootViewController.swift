//
//  RootViewController.swift
//  第11个Swift_UI程序
//
//  Created by MCUer on 15/5/1.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation
import UIKit


class RootViewController: UIViewController {
    
    var clickCount:Int=0;
    var myLabel:UILabel?;
    
    override func viewDidLoad(){
        super.viewDidLoad();
        
        //创建了一个view
        let rect=CGRect(x: 0, y: 100, width: 320, height: 44);
        myLabel=UILabel(frame: rect);
        myLabel!.text="this is a label";
        myLabel!.backgroundColor=UIColor.redColor();
        self.view.addSubview(myLabel!);
        
        //创建一个Button
        var myButton = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 44));
        myButton.backgroundColor = UIColor.blueColor();
        myButton.setTitle("点击", forState:UIControlState.Normal);
        myButton.addTarget(self, action: "onClick:", forControlEvents:.TouchUpInside);
        self.view.addSubview(myButton);
        
    }
    
    func onClick(sender:UIButton){
        clickCount++;
        myLabel?.text="click"+String(clickCount);
        println("onClick");
    }
    
}