//
//  ViewController.swift
//  19.UIDatePicker
//
//  Created by gmou on 16/9/5.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let datePicker = UIDatePicker(frame: CGRectMake(100, 100, 200, 200))
        
        // 设置显示模式
        datePicker.datePickerMode = .Time
        
        datePicker.addTarget(self, action: #selector(ViewController.changeDate), forControlEvents: .ValueChanged)
        
        self.view.addSubview(datePicker)
        
    }
    
    func changeDate(datePicker: UIDatePicker) {
        print(datePicker.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

