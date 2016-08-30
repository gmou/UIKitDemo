//
//  ViewController.swift
//  14.UIAlertController之ActionSheet
//
//  Created by gmou on 16/8/30.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate {

    // method 1
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        // destructiveButtonTitle 有警告提示的按钮(背景红色警告)
////        let actionSheet = UIActionSheet(title: "ActionSheet", delegate: self, cancelButtonTitle: "Cancel",                                       destructiveButtonTitle: "Delete")
//
//        let actionSheet = UIActionSheet(title: "ActionSheet", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "Other1", "Other2")
//        
//        actionSheet.showInView(self.view)
//        
//    }
//    
//    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
//        print(buttonIndex)
//    }
    
    override func viewDidLoad() {
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let actionSheet = UIAlertController(title: "ActionSheet", message: "Look me", preferredStyle: .ActionSheet)
        
        // 可以只使用.Default样式
        let ok = UIAlertAction(title: "OK", style: .Default) { (action) in
            print("OK Click")
        }
        // 默认点击ActionSheet之外的区域出发.Cancel按钮点击事件
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("Cancel Click")
        }
        // 有红色背景警告
        let delete = UIAlertAction(title: "Delete", style: .Destructive) { (action) in
            print("Delete Click")
        }
        
        actionSheet.addAction(ok)
        actionSheet.addAction(cancel)
        actionSheet.addAction(delete)
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

