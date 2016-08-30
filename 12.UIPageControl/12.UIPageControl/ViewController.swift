//
//  ViewController.swift
//  12.UIPageControl
//
//  Created by gmou on 16/8/28.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.redColor()
        
        let page = UIPageControl(frame: CGRectMake(100, 100, 100, 30))
        // 设置分页数
        page.numberOfPages = 6
        // 设置当前页码
        page.currentPage = 3
        // 当只有一页是否自动隐藏
        page.hidesForSinglePage = true
        // 设置分页控制器当前点颜色
        page.currentPageIndicatorTintColor = UIColor.orangeColor()
        // 设置分页控制器点颜色
        page.pageIndicatorTintColor = UIColor.blueColor()
        
        
        page.addTarget(self, action: #selector(ViewController.change), forControlEvents: .ValueChanged)
        
        self.view.addSubview(page)
        
    }
    
    func change(page: UIPageControl) {
        print(page.currentPage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

