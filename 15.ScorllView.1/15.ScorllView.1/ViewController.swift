//
//  ViewController.swift
//  15.ScorllView.1
//
//  Created by gmou on 16/8/30.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let scrollView = UIScrollView(frame: self.view.frame)
        // 设置内容大小
        scrollView.contentSize = CGSizeMake(self.view.frame.width*2, self.view.frame.height*2)
        // 方向锁定，只能按某个方向滚动，对角线除外
        scrollView.directionalLockEnabled = true
        // 设置回弹效果
        scrollView.bounces = false
        // 设置某个方向回弹效果
        //scrollView.alwaysBounceHorizontal
        
        // 设置滚动条位置
        //scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        
        // 设置是否显示滚动条
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = true
        // 翻页效果
        scrollView.pagingEnabled = true
        
        // 点击顶栏 自动跳到顶部
        //scrollView.scrollsToTop = true
        
        // 设置拉伸效果(需要设置代理)
        //scrollView.minimumZoomScale = 0.5
        //scrollView.maximumZoomScale = 2
        
        scrollView.delegate = self
        
        let view = UIView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        view.backgroundColor = UIColor.orangeColor()
        scrollView.addSubview(view)
        
        let view2 = UIView(frame: CGRectMake(self.view.frame.width, self.view.frame.height, self.view.frame.width, self.view.frame.height))
        view2.backgroundColor = UIColor.brownColor()
        scrollView.addSubview(view2)
        
        self.view.addSubview(scrollView)
        
    }
    
    // 返回进行缩放的视图
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return scrollView.subviews.first
    }
    
    // ScrollView减速结束触发的方法
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
    }

    // ScrollView停止拖拽触发方法
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
    }
    
    // SrcollView停止动画触发方法
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) {
        
    }
    
    // ScrollView停止缩放触发的方法
    func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) {
        
    }
    
    // 开始滑动触发的方法
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
    }
    
    // 点击顶部工具栏滑动到顶部后触发的方法
    func scrollViewDidScrollToTop(scrollView: UIScrollView) {
        print("scrollViewDidScrollToTop")
    }
    
    // 开始缩放触发的方法
    func scrollViewDidZoom(scrollView: UIScrollView) {
        
    }
    
    // 将要滑动到顶部调用的方法，返回false则不会返回到顶部
    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool {
        return false
    }
    
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        
    }
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?) {
        
    }
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

