//
//  ViewController.swift
//  ios-demo
//
//  Created by 王浩 on 14-6-22.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate {
    

    var tableView:  UITableView?
    var data: Dictionary<String, String>[]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = UITableView(frame:self.view.frame, style:.Plain)
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "CELL")
        self.navigationController.view.backgroundColor = UIColor(patternImage: UIImage(named: "background"))
        self.navigationController.navigationBar.setBackgroundImage(UIImage(named: "navbar"), forBarMetrics:.Default)
        self.view.backgroundColor = UIColor.clearColor()
        self.tableView!.backgroundColor = UIColor.clearColor()
        self.navigationController.navigationBar.tintColor = UIColor.whiteColor()
        self.title = "Demo"
        
        self.navigationController.delegate = self
        
        
        self.data = [
            ["text": "Stylized organs", "icon": "heart"],
            ["text": "Food pictures", "icon": "camera"],
            ["text": "Straight line maker", "icon": "pencil"],
            ["text": "Let's cook!", "icon": "beaker"],
            ["text": "That's the puzzle!", "icon": "puzzle"],
            ["text": "Cheers", "icon": "glass"]
        ]
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.data!.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tableView.dequeueReusableCellWithIdentifier("CELL") as UITableViewCell!
        if !cell {
            cell = UITableViewCell(style:.Default, reuseIdentifier: "CELL")
        }
        var dict: Dictionary = self.data![indexPath.row]
        cell.textLabel.text = dict["text"]
        cell.backgroundColor = UIColor.clearColor()
        cell.selectionStyle = .None
//        cell.
        cell.image = UIImage(named: dict["icon"])
        return cell
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 84 as CGFloat
    }
    

}

