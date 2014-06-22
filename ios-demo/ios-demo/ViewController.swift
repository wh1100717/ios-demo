//
//  ViewController.swift
//  ios-demo
//
//  Created by 王浩 on 14-6-22.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate {
    

    @IBOutlet var tableView: UITableView
    var data: Dictionary<String, String>[]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        [self.navigationController.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]]];
//        [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navbar"] forBarMetrics:UIBarMetricsDefault];
//        [self.view setBackgroundColor:[UIColor clearColor]];
//        [self.tableView setBackgroundColor:[UIColor clearColor]];
//        [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
//        
//        [self setTitle:@"Demo"];

        self.navigationController.view.backgroundColor = UIColor(patternImage: UIImage(named: "background"))
        self.navigationController.navigationBar.setBackgroundImage(UIImage(named: "navbar"), forBarMetrics:.Default)
        self.view.backgroundColor = UIColor.clearColor()
        self.tableView.backgroundColor = UIColor.clearColor()
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
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        var dict: Dictionary = self.data![indexPath.row]
        cell.textLabel.text = dict["text"]
        cell.backgroundView.backgroundColor = UIColor.clearColor()
        cell.selectionStyle = .None
        cell.imageView.image = UIImage(named: "icon")
        return cell
    }
    
    

}
