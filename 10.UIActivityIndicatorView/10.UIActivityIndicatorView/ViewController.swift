//
//  ViewController.swift
//  10.UIActivityIndicatorView
//
//  Created by gmou on 16/8/28.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let activity = UIActivityIndicatorView(frame: CGRectMake(320/2 - 10, 568/2, 20, 20))
    let activity = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.White)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.grayColor()
        
        activity.center = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        activity.color = UIColor.orangeColor()
        activity.startAnimating()
        
        self.view.addSubview(activity)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        activity.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

