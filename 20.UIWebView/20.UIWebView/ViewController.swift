//
//  ViewController.swift
//  20.UIWebView
//
//  Created by gmou on 16/9/5.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let webView = UIWebView(frame: CGRectMake(15, 0, self.view.frame.width, self.view.frame.height - 15))
        
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "www.baidu.com")!))
        
        self.view.addSubview(webView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

