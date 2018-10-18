//
//  UIConfiguration.swift
//  Meijia
//
//  Created by Joey on 2018/10/18.
//  Copyright © 2018年 Meijia. All rights reserved.
//

import Foundation

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
        self.backgroundColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1)
        self.borderButtonNormalColor = UIColor.blue
        self.borderButtonSelectedColor = UIColor.gray
        self.fillButtonNormalColor = UIColor.blue
        self.fillButtonSelectedColor = UIColor.gray
    }
}

class UIConfigurationMarcos {
    
}
