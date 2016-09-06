//
//  ViewController.swift
//  18.UIPickerView
//
//  Created by gmou on 16/9/5.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

/**
 * 选择器：二级联动
 */
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var data:[String: Array<String>]?
    var componentOneValue: String?
    var componentTwoValue: Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pickerView = UIPickerView(frame: CGRectMake(100, 100, 200, 200))
     
        pickerView.dataSource = self
        pickerView.delegate = self
        
        data = ["1.One": ["10", "11", "12"], "2.Two": ["20", "21", "22"], "3.Three": ["30", "31", "32"], "4.Four": ["40", "41", "42"], "5.Five": ["50", "51", "52"]]
        
        componentOneValue = data?.first?.0
        componentTwoValue = data?.first?.1
        
        self.view.addSubview(pickerView)
        
    }
    
    // 设置列数
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    // 设置每列数量
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return (data?.keys.count)!
        }
        if let value = componentTwoValue {
            return value.count
        }
        return 0
    }
    // 设置每列显示的内容
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            let keys = [String](data!.keys).sort()
            return keys[row]
        } else if component == 1 {
            if let value = componentTwoValue {
                return value[row]
            }
        }
        return nil
    }
    // 监听点击事件选中，当点击第一列 设置第二列显示的内容
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didSelectRow_%d_%d", component, row)
        if component == 0 {
            let keys = [String](data!.keys).sort()
            let key = keys[row]
            componentTwoValue = data![key]
            
        }
        pickerView.reloadComponent(1)
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

