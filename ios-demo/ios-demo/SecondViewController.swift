//
//  SecondViewController.swift
//  ios-demo
//
//  Created by 王浩 on 14-6-23.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Page"
        self.view.backgroundColor = UIColor.clearColor()
        self.navigationController.view.backgroundColor = UIColor(patternImage: UIImage(named: "background"))
        self.navigationController.navigationBar.setBackgroundImage(UIImage(named: "navbar"), forBarMetrics: .Default)
        self.navigationController.navigationBar.tintColor = UIColor.whiteColor()
    }

}
