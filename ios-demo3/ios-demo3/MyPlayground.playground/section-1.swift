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


var test2: String!
test2
test2?
test2 = "test2"
test2
test2!
test2?
test2 = nil

var test3: String = "test3"
test3
test3 = nil