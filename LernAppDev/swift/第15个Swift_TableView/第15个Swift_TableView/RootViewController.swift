//
//  RootViewController.swift
//  第15个Swift_TableView
//
//  Created by MCUer on 15/5/2.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import Foundation
import UIKit

let urlPath="http://xxxx.json";

class RootViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dataArr = NSMutableArray();
    var _tableView:UITableView?;
    var _connect:NSURLConnection?;
    var _recvData:NSMutableData=NSMutableData();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title="网络下载-TableView";
        
        for (var i=0;i<100;i++){
            dataArr.addObject("row \(i)");
        }
        
        _tableView = UITableView(frame: self.view.bounds,style: .Plain);
        _tableView?.delegate = self;
        _tableView?.dataSource = self;
        self.view.addSubview(_tableView!);
        
        downloadData();
    }
    
    func downloadData(){
        let url=NSURL(string: urlPath);
        let request = NSURLRequest(URL:url!);
        _connect = NSURLConnection(request: request, delegate: self);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return dataArr.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cellid = "my cell id";
        var cell = tableView.dequeueReusableCellWithIdentifier(cellid) as? UITableViewCell;
        if(cell==nil){
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellid);
        }
        var s=dataArr.objectAtIndex(indexPath.row) as? String;
        cell?.textLabel.text=s;
        //var s=dataArr.objectAtIndex(indexPath.row) as? VideoModel;
        //cell?.textLabel.text=s?.name;
        //cell?.detailTextLabel?.text=s?.date;
        return cell!;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        println("row \(indexPath.row) clicked");
    }
    
    func connection(connection: NSURLConnection, didReceiveData data: NSData){
        _recvData.appendData(data);
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection){
        let s=NSString(data: _recvData, encoding:NSUTF8StringEncoding);
        //JSON解析
        let videoArr = NSJSONSerialization.JSONObjectWithData(_recvData,options:NSJSONReadingOptions.MutableContainers, error:nil) as? NSArray;
        
        if(videoArr?.count>0){
            for(var i=0;i<videoArr?.count;i++){
                let onVideo=videoArr?[i] as NSDictionary;
                let name = onVideo.objectForKey("Name") as String;
                let author = onVideo.objectForKey("Author") as String;
                let date = onVideo.objectForKey("CreateTime") as String;
                var video = VideoModel();
                video.name=name;
                video.author=author;
                video.date = date;
                dataArr.addObject(video);
            }
        }
        _tableView?.reloadData();
    }
    
}
