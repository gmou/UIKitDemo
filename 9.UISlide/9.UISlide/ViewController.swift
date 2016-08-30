//
//  ViewController.swift
//  9.UISlide
//
//  Created by gmou on 16/8/28.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 创建
    let slider = UISlider(frame: CGRectMake(20, 100, 280, 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 添加监听方法
        slider.addTarget(self, action: #selector(ViewController.slider), forControlEvents: .ValueChanged)
        // 设置取值范围
        slider.minimumValue = 1
        slider.maximumValue = 100
        // 设置是否在滑动时持续触发ValueChanged监听事件
        slider.continuous = false
        // 设置滑动轴颜色
        slider.minimumTrackTintColor = UIColor.redColor()
        slider.maximumTrackTintColor = UIColor.greenColor()
        // 设置滑块颜色
        slider.thumbTintColor = UIColor.orangeColor()
        // 设置滑块初始值(滑块位置)
        slider.value = 50
        
        self.view.addSubview(slider)
        
    }
    
    func slider(slider: UISlider) {
        print(slider.value)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        slider.setValue(Float(rand()%99 + 1), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

