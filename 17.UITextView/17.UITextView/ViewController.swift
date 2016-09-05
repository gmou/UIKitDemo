//
//  ViewController.swift
//  17.UITextView
//
//  Created by gmou on 16/9/5.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let textView = UITextView(frame: CGRectMake(20, 100, 280, 100))
        textView.backgroundColor = UIColor.grayColor()
        
        textView.textColor = UIColor.orangeColor()
        textView.font = UIFont.systemFontOfSize(20)
        textView.textAlignment = .Center
        
        textView.editable = false
        
        textView.text = "Address：Beijing \nPhone: 13322333322 \n主页：www.topit.me"
        textView.dataDetectorTypes = .Link
        
        self.view.addSubview(textView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

