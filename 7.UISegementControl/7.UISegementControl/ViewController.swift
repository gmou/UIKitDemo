//
//  ViewController.swift
//  7.UISegementControl
//
//  Created by gmou on 16/8/26.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // seg 高度固定，通过此构造方法只能设定修改位置
    let seg: UISegmentedControl = UISegmentedControl(frame: CGRectMake(20, 100, 280, 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 设置分段控制器的按钮
        seg.insertSegmentWithTitle("First Button", atIndex: 0, animated: true)
        seg.insertSegmentWithTitle("Second Button", atIndex: 1, animated: true)
        
        // 修改修改事件
        seg.addTarget(self, action: #selector(ViewController.clickSeg), forControlEvents: .ValueChanged)
        
        // 设置是否为临时状态(不保持选中高亮状态)
        seg.momentary = true
        
        // 默认按钮宽度平均 如下设置自适应按钮宽度
        seg.apportionsSegmentWidthsByContent = true
        
        // 手动设置某个Button的宽度，不会再分均分配或者自适应
        //seg.setWidth(60, forSegmentAtIndex: 0)
        
        // 设置内容偏移量
        seg.setContentOffset(CGSizeMake(10, 10), forSegmentAtIndex: 1)
        // 设置默认选中的button
        seg.selectedSegmentIndex = 0
        
        // 设置渲染颜色
        seg.tintColor = UIColor.grayColor()
        
        self.view.addSubview(seg)

    }
    
    func clickSeg(seg: UISegmentedControl) {
        print("Btn click \(seg.selectedSegmentIndex)")
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        seg.insertSegmentWithTitle("Third Button", atIndex: 1, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

