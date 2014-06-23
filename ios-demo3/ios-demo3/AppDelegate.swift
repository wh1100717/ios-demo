//
//  AppDelegate.swift
//  ios-demo3
//
//  Created by 王浩 on 14-6-23.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: .Slide)
        UIApplication.sharedApplication().setStatusBarStyle(.BlackOpaque, animated: false)

        return true
    }

}

