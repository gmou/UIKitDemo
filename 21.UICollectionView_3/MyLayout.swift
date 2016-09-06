//
//  MyLayout.swift
//  21.UICollectionView_3
//
//  Created by gmou on 16/9/5.
//  Copyright © 2016年 gmou. All rights reserved.
//

import UIKit

class MyLayout: UICollectionViewFlowLayout {

    var itemCount:Int?
    var attributeArray:Array<UICollectionViewLayoutAttributes>?
    
    override func prepareLayout() {
        super.prepareLayout()
        
        attributeArray = Array()
        
        let width = (UIScreen.mainScreen().bounds.size.width - self.minimumInteritemSpacing)/2
        
        var l = 0
        var r = 0
        
        for i in 0..<itemCount! {
            let indexPath = NSIndexPath(forItem: i, inSection: 0)
            let attri = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
            
            let height = (Int)(rand()%140 + 50)
            // 记录此item放置到哪一列下面
            var tmp = 0
            var h = 0
            // 将item放到左边一列
            if l <= r {
                h = l + (Int)(self.minimumLineSpacing)
                l = l + height + (Int)(self.minimumLineSpacing)
                tmp = 0
            }
            // 将item放到右边一列
            else {
                h = r + (Int)(self.minimumLineSpacing)
                r = r + height + (Int)(self.minimumLineSpacing)
                tmp = 1
            }
            
            attri.frame = CGRectMake((CGFloat)(tmp) * (width + self.minimumInteritemSpacing), (CGFloat)(h), width, (CGFloat)(height))
        
            attributeArray?.append(attri)
            
        }
        
        if l <= r {
            self.itemSize = CGSizeMake(width, (CGFloat)(r * 2 / itemCount!) - self.minimumLineSpacing)
        } else {
            self.itemSize = CGSizeMake(width, (CGFloat)(l * 2 / itemCount!) - self.minimumLineSpacing)
        }
        
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return attributeArray
    }
    
}
