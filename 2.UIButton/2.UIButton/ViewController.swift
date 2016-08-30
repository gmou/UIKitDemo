//
//  ViewController.swift
//  2.UIButton
//
//  Created by gmou on 16/8/26.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 根据指定类型创建Button
        let button:UIButton = UIButton(type: .Custom)
        button.frame = CGRectMake(100, 100, 100, 100)
        button.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(button)
        
        // Add action
        button.addTarget(self, action: #selector(ViewController.click), forControlEvents: .TouchDown)
        
        button.setTitle("按钮", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        // top buttom, left right 两组 最终结果为每组相加后的偏移量
        button.contentEdgeInsets = UIEdgeInsetsMake(-10, -10, -20, -10)
        
        // 设置按钮的背景图片，如果设置了title，title会显示在图片上面
//        button.setBackgroundImage(UIImage(named: "emptyStar.png"), forState: .Normal)
        
        // 设置Image，同时存在image跟title 如果image过大会覆盖title
        button.setImage(UIImage(named: "emptyStar.png"), forState: .Normal)
        button.setImage(UIImage(named: "filledStar.png"), forState: .Selected)
        button.setImage(UIImage(named: "filledStar.png"), forState: .Highlighted)
        
        // 高亮阴影效果，如果为yes，点击时图片会变暗
        button.adjustsImageWhenHighlighted = false
        
    }
    
    func click(btn: UIButton) {
        print("btn click")
        btn.backgroundColor = UIColor(red: (CGFloat)(random()%255)/255, green: (CGFloat)(random()%255)/255, blue: (CGFloat)(random()%255)/255, alpha: 1)
        
        btn.selected = !btn.selected
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

