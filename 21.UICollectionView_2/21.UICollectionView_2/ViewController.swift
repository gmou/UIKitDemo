//
//  ViewController.swift
//  21.UICollectionView_2
//
//  Created by gmou on 16/9/5.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let layout = UICollectionViewFlowLayout()
        // 设置布局方向 Vertical:水平排列 Horizontal:竖直排列
        layout.scrollDirection = .Vertical
        // 设置每个元素大小
        layout.itemSize = CGSizeMake(80, 80)
        // 设置元素间距
        layout.minimumInteritemSpacing = 50
        // 设置行间距
        layout.minimumLineSpacing = 30
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.registerClass(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "cellId")
        
        self.view.addSubview(collectionView)
        
    }
    
    // MARK: delegate.DataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellId", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.orangeColor()
        return cell
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // MARK: dalegate.CollectionView
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let tmp = indexPath.row % 3
        var size:CGSize?
        switch tmp {
        case 0:
            size = CGSizeMake(50, 50)
        case 1:
            size = CGSizeMake(100, 100)
        case 2:
            size = CGSizeMake(50, 50)
        default:
            break
        }
        return size!
    }

}

