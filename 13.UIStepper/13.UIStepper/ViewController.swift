//
//  ViewController.swift
//  13.UIStepper
//
//  Created by gmou on 16/8/30.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel(frame: CGRectMake(100, 300, 100, 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let stepper = UIStepper(frame: CGRectMake(100, 100, 100, 100))
        // 设置最大最小值
        stepper.maximumValue = 10
        stepper.minimumValue = 0
        // 设置步长
        stepper.stepValue = 2
        // 按下是否连续触发ValueChange函数
        stepper.continuous = false
        // 按下是否一直改变值
        stepper.autorepeat = false
        // 值是否max <-> min 循环
        stepper.wraps = true
        
        stepper.addTarget(self, action: #selector(ViewController.change), forControlEvents: .ValueChanged)
        
        
        label.text = String(format: "%f", stepper.value)
        
        self.view.addSubview(stepper)
        self.view.addSubview(label)
        
    }
    
    func change(stepper: UIStepper) {
        label.text = String(format: "%f", stepper.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

