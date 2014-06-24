//
//  AppDelegate.swift
//  ios-demo3
//
//  Created by 王浩 on 14-6-23.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit
import CoreLocation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, CLLocationManagerDelegate {
                            
    var window: UIWindow?
    
    var locationManager: CLLocationManager!
    var seenError : Bool = false
    var locationFixAchieved : Bool = false
    var locationStatus : NSString = "Not Started"
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        
        //StatusBar相关
        UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: .Slide)
        UIApplication.sharedApplication().setStatusBarStyle(.BlackOpaque, animated: false)
        initLocationManager()
        return true
    }
    
    // Location Manager helper stuff
    func initLocationManager() {
        seenError = false
        locationFixAchieved = false
        locationManager = CLLocationManager()
        
        if locationManager.locationServicesEnabled {
            println("locationManager Enabled")
        }else {
            println("locationManager Disabled")
        }
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self

        println("start to get location")
        locationManager.startUpdatingLocation()

    }
    
    // Location Manager Delegate stuff
    // If failed
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        locationManager.stopUpdatingLocation()
        println("Error getting location")
        if (error) {
            if (seenError == false) {
                seenError = true
                println("Error getting location")
            }
        }
    }

    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
        println("1233")
    }

    
    // if success
    // Assumptions: locations is an array, locationObj is a CLLocation
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: AnyObject[]!) {
        println("sffsdf")
        if (locationFixAchieved == false) {
            locationFixAchieved = true
            var locationArray = locations as NSArray
            var locationObj = locationArray.lastObject as CLLocation
            var coord = locationObj.coordinate
            locationManager.stopUpdatingLocation()
            println("Location: \(coord.latitude) \(coord.longitude)")
        }
    }
    
//    // authorization status
//    func locationManager(manager: CLLocationManager!,
//        didChangeAuthorizationStatus status: CLAuthorizationStatus) {
//            var shouldIAllow = false
//            
//            switch status {
//            case CLAuthorizationStatus.Restricted:
//                locationStatus = "Restricted Access"
//            case CLAuthorizationStatus.Denied:
//                locationStatus = "User denied access"
//            case CLAuthorizationStatus.NotDetermined:
//                locationStatus = "Status not determined"
//            default:
//                locationStatus = "Allowed Access"
//                shouldIAllow = true
//            }
//            NSNotificationCenter.defaultCenter().postNotificationName("LabelHasbeenUpdated", object: nil)
//            if (shouldIAllow == true) {
//                println("Location Allowed")
//                // Start location services
//                locationManager.startUpdatingLocation()
//            } else {
//                println("Denied access: \(locationStatus)")
//            }
//    }
//
    
    

}

