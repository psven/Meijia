//
//  UIConfiguration.swift
//  Meijia
//
//  Created by Joey on 2018/10/18.
//  Copyright © 2018年 Meijia. All rights reserved.
//

import Foundation
import UIKit



class UIConfiguration {
    
    // 单例
    static let shareInstance = UIConfiguration()
    
    // MARK: - Button Color
    var backgroundColor: UIColor
    var borderButtonNormalColor: UIColor
    var borderButtonSelectedColor: UIColor
    var fillButtonNormalColor: UIColor
    var fillButtonSelectedColor: UIColor
    
    
    init() {
        
        self.backgroundColor = UIColorMake(245, 245, 245)
        self.borderButtonNormalColor = UIColor.blue
        self.borderButtonSelectedColor = UIColor.gray
        self.fillButtonNormalColor = UIColor.blue
        self.fillButtonSelectedColor = UIColor.gray
    }
}


// MARK: - 全局定义

func UIColorMake(_ red: Int, _ green: Int, _ blue: Int) -> UIColor! {
    return UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
}



/// Global Color
let UIColorBackground = UIConfiguration.shareInstance.backgroundColor

/// Button
let BorderButtonColorNomal = UIConfiguration.shareInstance.borderButtonNormalColor
let BorderButtonColorSeleted = UIConfiguration.shareInstance.borderButtonSelectedColor
let FillButtonColorNomal = UIConfiguration.shareInstance.borderButtonNormalColor
let FillButtonColorSelected = UIConfiguration.shareInstance.borderButtonSelectedColor

/// UITabBar
let tabBarItemTitleColorNormal = UIColor.darkGray
let tabBarItemTitleColorSelected = UIColor.blue
