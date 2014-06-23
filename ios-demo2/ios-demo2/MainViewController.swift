//
//  MainViewController.swift
//  ios-demo2
//
//  Created by 王浩 on 14-6-23.
//  Copyright (c) 2014年 王浩. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化背景颜色为白色
        self.view.backgroundColor = UIColor.whiteColor()
        
        //创建hello world标签
        let label1 = UILabel(frame: CGRectMake(200, 200, 100, 100))
        label1.text = "Hello World"
        
        //创建Button标签
        let button1 = UIButton(frame: CGRectMake(20, 30, 100, 100))
        button1.setTitle("Hello", forState: .Normal)
        button1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button1.titleLabel.font = UIFont.boldSystemFontOfSize(20)
        
        self.view.addSubview(label1)
        self.view.addSubview(button1)
        
    }
}