//
//  AppDelegate.swift
//  ios-demo
//
//  Created by 王浩 on 14-6-22.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        // Override point for customization after application launch.

        UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: .Slide)
        UIApplication.sharedApplication().setStatusBarStyle(.BlackOpaque, animated: false)

        let attributes: Dictionary = ["NSFontAttributeName": UIFont(name: "GillSans-Light", size: 20), "NSForegroundColorAttributeName": UIColor.whiteColor()]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        
        
        return true
    }

}

