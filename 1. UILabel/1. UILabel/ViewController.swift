//
//  ViewController.swift
//  1. UILabel
//
//  Created by gmou on 16/8/25.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label: UILabel = UILabel(frame: CGRectMake(100, 100, 200, 100))
        label.text = "I am a label, i like ios, i like phone"
        // UIFont(name: <#T##String#>, size: <#T##CGFloat#>) // 自定义字体
        // UIFont.systemFontOfSize(<#T##fontSize: CGFloat##CGFloat#>) // 使用系统字体，设置大小
        label.font = UIFont.boldSystemFontOfSize(25)
//        UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
        label.textColor = UIColor.grayColor()
        label.backgroundColor = UIColor.blueColor()
        // 内部文字对其方式
        label.textAlignment = NSTextAlignment.Center // Left Right
        // 文字阴影
//        label.shadowOffset = CGSizeMake(2, 2)
//        label.shadowColor = UIColor.orangeColor()
        label.numberOfLines = 2 // 设为0 在高度内 任意行
        // 每个controller都管理一个UIView
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

