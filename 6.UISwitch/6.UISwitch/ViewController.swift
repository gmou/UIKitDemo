//
//  ViewController.swift
//  6.UISwitch
//
//  Created by gmou on 16/8/26.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UISwitch系统组件无法改变大小，使用此init只能设置位置
        let mySwitch: UISwitch = UISwitch(frame: CGRectMake(100, 100, 100, 100))
        
        // 自定义UI
        // 设置滑块颜色
        mySwitch.thumbTintColor = UIColor.redColor()
        // 设置开关正常(关闭)状态渲染的颜色
        mySwitch.tintColor = UIColor.grayColor()
        // 设置开关开启时候的颜色
        mySwitch.onTintColor = UIColor.blueColor()
        
        mySwitch.addTarget(self, action: #selector(ViewController.switchClick), forControlEvents: .ValueChanged)
        
        self.view.addSubview(mySwitch)
        
    }
    
    func switchClick(mySwitch: UISwitch) {
        print("switchClick value:\(mySwitch.on)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

