// Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"

var date = NSDate.date()

var dateFormatter = NSDateFormatter()

dateFormatter.dateFormat = "yyyy年MM月dd日 星期"

dateFormatter.stringFromDate(date)


func getFormatDate(date:NSDate) -> String {
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy年MM月dd日"
    var stringDate = dateFormatter.stringFromDate(date)
    
    return stringDate
}

getFormatDate(NSDate.date())
//getFormatDate(NSDate())