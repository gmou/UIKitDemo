//
//  ViewController.swift
//  14.UIAlertController之AlterView
//
//  Created by gmou on 16/8/30.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    // old method to create AlertView
//    var alert: UIAlertView?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        let button = UIButton(frame: CGRectMake(100, 100, 200, 200))
//        button.backgroundColor = UIColor.orangeColor()
//        button.setTitle("Alert", forState: .Normal)
//        button.addTarget(self, action: #selector(ViewController.buttonClick), forControlEvents: .TouchDown)
//        self.view.addSubview(button)
//        
//        alert = UIAlertView(title: "Alert", message: "Look At Me", delegate: self, cancelButtonTitle: "Cancel", otherButtonTitles: "Other")
//        
//        // 使用旧的方法创建警告框
//        
//        alert?.show()
//        
//    }
//    
//    func buttonClick() {
//        alert?.show()
//    }
//    
//    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
//        print(buttonIndex)
//    }
    
    // 使用新的方法创建UIAlertView
    override func viewDidLoad() {
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let alert = UIAlertController(title: "Alert", message: "Look at me", preferredStyle: .Alert)
        let actionOK = UIAlertAction(title: "OK", style: .Default) {
            (alert) -> Void in
            print("ok")
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .Cancel) {
            (alert) -> Void in
            print("Cancel")
        }
        alert.addAction(actionCancel)
        alert.addAction(actionOK)
        
        alert.addTextFieldWithConfigurationHandler({
            (textField) -> Void in
            textField.placeholder = "Input your phone"
            textField.keyboardType = .NumberPad
        })
        
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

