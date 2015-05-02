//
//  ViewController.swift
//  第12个Swift_导航控制器
//
//  Created by MCUer on 15/5/2.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import UIKit

class RootViewController: UIViewController,FontSizeChangeDelegate {

    var myLabel:UILabel?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title="第一个页面";
        let nextItem = UIBarButtonItem(title: "下一页", style: .Plain, target: self, action: "nextPage");
        self.navigationItem.rightBarButtonItem = nextItem;
        
        let rect=CGRect(x: 0, y: 100, width: 320, height: 44);
        myLabel=UILabel(frame: rect);
        myLabel!.text="this is a label";
        myLabel!.backgroundColor=UIColor.greenColor();
        self.view.addSubview(myLabel!);
    }

    func nextPage(){
        let svc = SecondViewController();
        svc.delegate = self;
        self.navigationController?.pushViewController(svc, animated: true);
    }
    
    
    func fontSizeChange(controler:SecondViewController,fontSize:Int){
        let font:UIFont = UIFont.systemFontOfSize(CGFloat(fontSize));
        myLabel?.font=font;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

