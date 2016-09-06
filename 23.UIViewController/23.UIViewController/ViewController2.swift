//
//  ViewController2.swift
//  23.UIViewController
//
//  Created by gmou on 16/9/6.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

/**
 * ViewController生命周期， 1-6 开始 7-10 结束
 * 其中8，9 只有在storyboard中初始化ViewController才会自动调用
 */
//1 loadView
//2 viewDidLoad
//3 viewWillAppear
//4 viewWillLayoutSubviews
//5 viewDidLayoutSubviews
//6 viewDidAppear
//7 viewWillDisappear
//8 viewWillLayoutSubviews
//9 viewDidLayoutSubviews
//10 viewDidDisappear
class ViewController2: UIViewController {
    
    var tmp = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        tmp += 1
        print(tmp, "viewDidLoad")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        super.loadView()
        tmp += 1
        print(tmp, "loadView")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tmp += 1
        print(tmp, "viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tmp += 1
        print(tmp, "viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tmp += 1
        print(tmp, "viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tmp += 1
        print(tmp, "viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        tmp += 1
        print(tmp, "viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        tmp += 1
        print(tmp, "viewDidDisappear")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // modal 
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
