//
//  ViewController.swift
//  ios-demo3
//
//  Created by 王浩 on 14-6-23.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    
//    let locationManager:CLLocationManager = CLLocationManager()
    
    @IBOutlet var dateLabel: UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        self.dateLabel.text = getFormatDate(NSDate.date())
        self.dateLabel.font = UIFont(name: "GillSans-Light", size: 30 as CGFloat) //为啥不好使呢...
        self.dateLabel.textColor = UIColor.whiteColor()
        
//        getLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getLocation() {
//        self.locationManager = [[CLLocationManager alloc]init];
//        self.locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers;
//        self.locationManager.distanceFilter = 3000;
//        self.locationManager.delegate = self;
//        [self.locationManager startUpdatingLocation];

        //  Initialize and configure the location manager and start updating the user's current location
        println("start to get location")
//        self.locationManager.startUpdatingLocation()
        

    }
    
    func getFormatDate(date:NSDate) -> String {
        let dateFormatter = NSDateFormatter()
        if date.isThisYear() {
            dateFormatter.dateFormat = "MM月dd日"
        }else {
            dateFormatter.dateFormat = "yyyy年MM月dd日"
        }
        
        var stringDate = dateFormatter.stringFromDate(date)
        
        switch date.weekday {
        case 1:
            stringDate = stringDate + " 星期日"
        case 2:
            stringDate = stringDate + " 星期一"
        case 3:
            stringDate = stringDate + " 星期二"
        case 4:
            stringDate = stringDate + " 星期三"
        case 5:
            stringDate = stringDate + " 星期四"
        case 6:
            stringDate = stringDate + " 星期五"
        case 7:
            stringDate = stringDate + " 星期六"
        default:
            println("r u kidding me? wrong weekday: \(date.weekday)")
        }
        return stringDate
    }

//    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: AnyObject[]!) {
//        println("get location:")
//        println("\(locations)")
//    }
//
//    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
//        println("Error occurs!")
//        println("\(error)")
//    }
}

