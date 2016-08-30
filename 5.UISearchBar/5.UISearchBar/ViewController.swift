//
//  ViewController.swift
//  5.UISearchBar
//
//  Created by gmou on 16/8/26.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    let searchBar: UISearchBar = UISearchBar(frame: CGRectMake(20, 100, 280, 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 创建搜索框
        
        // 设置搜索框的默认提示语
        searchBar.placeholder = "please input keyword"
        // 设置搜索框默认文字
        searchBar.text = "剑圣"
        // 设置提示文字，不会消失
        //searchBar.prompt = "Title"
        // 设置风格
        searchBar.barStyle = .Default
        
        // 设置功能按钮
        //searchBar.showsBookmarkButton = true
        //searchBar.showsCancelButton = true
        searchBar.showsSearchResultsButton = true
        
        // 设置渲染颜色
        searchBar.tintColor = UIColor.grayColor()
        searchBar.barTintColor = UIColor(red: 74/255, green: 207/255, blue: 140/255, alpha: 1)
        
        // 设置搜索框的附件视图
        searchBar.scopeButtonTitles = ["1", "2", "3", "4"]
        searchBar.showsScopeBar = true // default is NO. if YES, shows the scope bar. call sizeToFit: to update frame
        searchBar.sizeToFit()
        
        searchBar.delegate = self
        
        self.view.addSubview(searchBar)
        
    }
    
    // MARK: callback
    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        print("searchBar \(selectedScope)")
    }
    // 输入框内容改变
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        print("textDidChange text:\(searchText)")
    }
    // 监测用户输入文字，此次改变的内容
    func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        print("shouldChangeText range:\(range), text:\(text)")
        return true
    }

    // 将要进行输入调用的方法，返回false则无法进行输入
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        print("searchBarShouldBeginEditing")
        return true
    }
    // 将要结束输入调用的方法，返回false则无法取消输入 键盘不会收起
    func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool {
        print("searchBarShouldEndEditing")
        return true
    }
    // 进入编辑框开始编辑时调用的方法
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        print("searchBarTextDidBeginEditing")
    }
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        print("searchBarTextDidEndEditing")
    }
    // 键盘search按钮点击事件 
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        print("searchBarSearchButtonClicked")
    }
    
    // 监听view的触摸事件，释放searchBar的焦点 隐藏键盘
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        searchBar.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

