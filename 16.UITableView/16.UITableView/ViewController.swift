//
//  ViewController.swift
//  16.UITableView
//
//  Created by gmou on 16/8/30.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataArray :Array<String>?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dataArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
        
        // style: Plain时，header跟footer会悬浮在屏幕顶部跟下面
        let tableView = UITableView(frame: self.view.frame, style: .Plain)
        
        tableView.bounces = false
        
        tableView.dataSource = self
        tableView.delegate = self
        
        /** 
         * 设置tableView为编辑状态[编辑默认Cell可以上下移动]，配合代理方法
         * 1. editingStyleForRowAtIndexPath 设置状态
         * 2. commitEditingStyle 监听点击事件
         * 3. canMoveRowAtIndexPath 默认Cell可以移动，可以继承返回false
         */
         tableView.editing = true
        
        self.view.addSubview(tableView)
        
        tableView.reloadData()
        
    }
    
    // MARK: DataSource.delegate
    // 设置分区数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    // 设置每个分区行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArray?.count)!
    }
    // 设置每个分区对应row的Cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // indexPath.section indexPath.row
        // let cell = UITableViewCell(style: .Default, reuseIdentifier: "cell_id")
        
        // Cell复用
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(NSString(format: "cell_%d_%d", indexPath.section, indexPath.row) as String)
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell_id")
            cell?.textLabel?.text = dataArray![indexPath.row]
            cell?.selectionStyle = .None // 点击高亮效果
        }
        
        return cell!
    }
    
    // MARK: TableView.delegate
    // 设置她头视图高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    // 设置尾视图高度
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    // 设置Cell高度，默认44
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    // 设置header的视图
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0, 0, 320, 100))
        view.backgroundColor = UIColor.orangeColor()
        return view
    }
    // 设置footer的视图
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0, 0, 320, 100))
        view.backgroundColor = UIColor.grayColor()
        return view
    }
    
    // 监听Cell点击选中事件
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        print("willSelect_%d_%d", indexPath.section, indexPath.row)
        return indexPath
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("didSelect_%d_%d", indexPath.section, indexPath.row)
    }
    
    // 设置tableView编辑状态 需要tableView的editing为true 可以设置为.Delete/.Insert/.None
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .None
    }
    // 监听编辑状态下的点击事件
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        switch editingStyle {
        case .Delete:
            dataArray?.removeAtIndex(indexPath.row)
            tableView.reloadData()
        case .Insert:
            dataArray?.insert("new", atIndex: indexPath.row + 1)
            tableView.reloadData()
        default:
            break
        }
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let str1 = dataArray?[sourceIndexPath.row]
        dataArray?.removeAtIndex(sourceIndexPath.row)
        dataArray?.insert(str1!, atIndex: destinationIndexPath.row)
        
        
    }
    
    // MARK: override

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

