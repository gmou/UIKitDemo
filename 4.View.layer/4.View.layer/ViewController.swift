//
//  ViewController.swift
//  4.View.layer
//
//  Created by gmou on 16/8/26.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageView: UIImageView = UIImageView(frame: CGRectMake(100, 100, 100, 100))
        imageView.backgroundColor = UIColor.grayColor()
        
        // 设置圆角
//        imageView.layer.masksToBounds = true // 设置切割过后，阴影设置阴影就不可见了
        // 圆角半径
        imageView.layer.cornerRadius = 50
        // 圆角边框
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.greenColor().CGColor
        imageView.layer.shadowColor = UIColor.purpleColor().CGColor
        imageView.layer.shadowOffset = CGSizeMake(10, 10)
        imageView.layer.shadowOpacity = 1
        
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

