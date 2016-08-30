//
//  ViewController.swift
//  9.UISlider的实操
//
//  Created by gmou on 16/8/28.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageView = UIImageView(frame: CGRectMake(0, 0, 320, 400))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let slider = UISlider(frame: CGRectMake(20, self.view.frame.size.height - 50, 280, 20))
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        slider.addTarget(self, action: #selector(ViewController.slider), forControlEvents: .ValueChanged)
        
        // 设置ImageView中内容填充模式
        imageView.contentMode = .ScaleAspectFit
        imageView.image = UIImage(named: "QQ20160828-0@2x.png")
        
        self.view.addSubview(slider)
        self.view.addSubview(imageView)
    }
    
    func slider(slider: UISlider) {
        let value = (CGFloat)(1 - slider.value / slider.maximumValue)
        print(value)
        // 此时起点坐标不变，会已起点坐标缩放
        //imageView.frame = CGRectMake(0, 0, 320*value, 400*value)
        // 已中间点缩放
        imageView.bounds = CGRectMake(0, 0, 320*value, 400*value)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

