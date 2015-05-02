//
//  AppDelegate.swift
//  第14个Swift_TableBar
//
//  Created by MCUer on 15/5/2.
//  Copyright (c) 2015年 MoMing. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds);
        self.window!.backgroundColor=UIColor.grayColor();
        
        //第一个tab
        let vc1:UIViewController = FirstViewController();
        let nav1:UINavigationController = UINavigationController(rootViewController: vc1);
        //let image1 = UIImage(named: "");
        nav1.tabBarItem = UITabBarItem(title: "会话", image: nil, tag: 1);
        
        
        //第二个tab
        let vc2:UIViewController = SecondViewController();
        let nav2:UINavigationController = UINavigationController(rootViewController: vc2);
        //let image2 = UIImage(named: "");
        nav2.tabBarItem = UITabBarItem(title: "联系人", image: nil, tag: 2);
        
        //第三个tab
        let vc3:UIViewController = ThirdViewController();
        let nav3:UINavigationController = UINavigationController(rootViewController: vc3);
        //let image3 = UIImage(named: "");
        nav3.tabBarItem = UITabBarItem(title: "设置", image: nil, tag: 3);
        
        //设置UITabBarController
        let arr = [nav1,nav2,nav3];
        let tvc = UITabBarController();
        tvc.viewControllers = arr;
        
        
        //显示
        self.window?.rootViewController = tvc;
        self.window!.makeKeyAndVisible();
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

