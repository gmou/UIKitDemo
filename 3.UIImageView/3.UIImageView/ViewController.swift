//
//  ViewController.swift
//  3.UIImageView
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
        
        imageView.image = UIImage(named: "emptyStar.png")
        imageView.backgroundColor = UIColor.redColor()
        // 设置高亮时的显示图片，高亮状态需要手动设置
        imageView.highlightedImage = UIImage(named: "filledStar.png")
        //imageView.highlighted = true
        
        // 设置ImageView的动画数组
        var array: Array<UIImage!> = Array()
        array.append(UIImage(named: "emptyStar.png"))
        array.append(UIImage(named: "filledStar.png"))
        imageView.animationImages = array as? [UIImage]
        
        // 设置重复次数，每次时间
        imageView.animationRepeatCount = 2
        imageView.animationDuration = 2
        
        // 开始播放动画
        imageView.startAnimating()
        
        self.view.addSubview(imageView)
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

