//
//  AppDelegate.swift
//  ios-demo2
//
//  Created by 王浩 on 14-6-23.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
//        self.window!.backgroundColor = UIColor.whiteColor()
        var mainView = MainViewController()
        self.window!.rootViewController = mainView
        self.window!.makeKeyAndVisible()
        return true
    }
}

