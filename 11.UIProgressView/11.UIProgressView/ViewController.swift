//
//  ViewController.swift
//  11.UIProgressView
//
//  Created by gmou on 16/8/28.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let progess = UIProgressView(progressViewStyle: .Default)
        progess.frame = CGRectMake(20, 100, 280, 20)
        // 设置进度
        progess.progress = 0.5
        // 设置颜色 已完成／未完成
        progess.progressTintColor = UIColor.redColor()
        progess.trackTintColor = UIColor.greenColor()
        
        self.view.addSubview(progess)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

