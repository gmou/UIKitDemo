//
//  ViewController.swift
//  8.UITextField
//
//  Created by gmou on 16/8/28.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    let textField = UITextField(frame: CGRectMake(20, 100, 280, 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // 设置输入框风格
        textField.borderStyle = .Bezel
        // 设置输入框提示语
        textField.placeholder = "Please input your word"
        // 设置输入文字颜色
        textField.textColor = UIColor.redColor()
        // 设置文字字体
        textField.font = UIFont.italicSystemFontOfSize(15)
        // 设置文字对其方式
        textField.textAlignment = .Center
        // 是否每次进入编辑状态清空输入框文字
        textField.clearsOnBeginEditing = true
        // 是否字体大小自适应(根据输入文字长度)
        textField.adjustsFontSizeToFitWidth = true
        // 设置输入框无效状态，无法输入
        //textField.enabled = false
        // 设置输入框无效是背景图片
        //textField.disabledBackground = UIImage(named: "")
        
        let viewLeft = UIView(frame: CGRectMake(0, 0, 40, 40))
        viewLeft.backgroundColor = UIColor.blueColor()
        let viewRight = UIView(frame: CGRectMake(0, 0, 40, 40))
        viewRight.backgroundColor = UIColor.greenColor()
        
        textField.clearButtonMode = .WhileEditing
        
        // 设置输入框左右视图
        textField.leftView = viewLeft
        textField.rightView = viewRight
        // 设置左右视图模式
        textField.leftViewMode = .Always
        textField.rightViewMode = .Always
        
        // 设置弹出的交互键盘
        let board = UIView(frame: CGRectMake(0, 0, 320, 200))
        textField.inputView = board
        
        // 设置附键盘视图
        let accessoryBorder = UIView(frame: CGRectMake(0, 0, 320, 50))
        accessoryBorder.backgroundColor = UIColor.orangeColor()
        textField.inputAccessoryView = accessoryBorder
        
        // 键盘设置
        textField.keyboardType = .EmailAddress          // 键盘类型
        textField.returnKeyType = .Go                   // 键盘上return按钮类型
        textField.enablesReturnKeyAutomatically = true  // 键盘上return按钮是否可用
        
        
//        textField.backgroundColor = UIColor.grayColor()
        
        // 设置代理
        textField.delegate = self
        
        self.view.addSubview(textField)
        
    }
    
    // MARK: delegate
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        print(range, string)
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    func textFieldDidEndEditing(textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        return true
    }
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
    }
    func textFieldShouldClear(textField: UITextField) -> Bool {
        print("textFieldShouldClear")
        return true
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        textField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

