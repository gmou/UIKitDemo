//
//  ViewController.swift
//  7.UISegmentControl切换视图
//
//  Created by gmou on 16/8/26.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let viewBlue: UIView = UIView(frame: CGRectMake(0, 0, 320, 568))
    let viewRed: UIView = UIView(frame: CGRectMake(0, 0, 320, 568))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewBlue.backgroundColor = UIColor.blueColor()
        viewRed.backgroundColor = UIColor.redColor()
        
        let seg: UISegmentedControl = UISegmentedControl(items: ["blue", "red"])
        
        seg.addTarget(self, action: #selector(ViewController.clickSeg), forControlEvents: .ValueChanged)
        
        seg.selectedSegmentIndex = 0
        
        self.navigationItem.titleView = seg
        
        self.view.addSubview(viewBlue)
        self.view.addSubview(viewRed)
        
        self.view.bringSubviewToFront(viewBlue)
        
    }

    func clickSeg(seg: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            self.view.bringSubviewToFront(viewBlue)
        } else {
            self.view.bringSubviewToFront(viewRed)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

