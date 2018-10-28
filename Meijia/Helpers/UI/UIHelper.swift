//
//  UIHelper.swift
//  CXJ
//
//  Created by Joey on 2018/6/9.
//  Copyright © 2018年 ChuangXiangJia. All rights reserved.
//

import Foundation

class UIHelper {
    
}


// MARK: - Screen
extension UIHelper {
    static func isLandscape() -> Bool {
        return UIInterfaceOrientationIsLandscape(UIApplication.shared.statusBarOrientation)
    }
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.size.height
    }
    static var deviceWidth: CGFloat {
        return self.isLandscape() ? UIScreen.main.bounds.size.height : UIScreen.main.bounds.size.width
    }
    static var deviceHeight: CGFloat {
        return self.isLandscape() ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height
    }
    
}


// MARK: - Device
extension UIHelper {
    
    /// 判断是否模拟器
    private static var isSimulatorIdentifier: Int = -1
    private static func isSimulator() -> Bool {
        if isSimulatorIdentifier < 0 {
            #if TARGET_OS_SIMULATOR
            isSimulatorIdentifier = 1
            #else
            isSimulatorIdentifier = 0
            #endif
        }
        return isSimulatorIdentifier == 1 ? true : false
    }
    
    /// iPad
    private static var isIPadIdentifier: Int = -1
    static func isIPad() -> Bool {
        if isIPadIdentifier < 0 {
            isIPadIdentifier = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad ? 1 : 0
        }
        return isIPadIdentifier > 0 ? true : false
    }
    
    /// iPad Pro
    private static var isIPadProIdentifier: Int = -1
    static func isIPadPro() -> Bool {
        if isIPadProIdentifier < 0 {
            isIPadProIdentifier = self.isIPad() ? (self.deviceWidth == 1024 && self.deviceHeight == 1366 ? 1 : 0) : 0
        }
        return isIPadIdentifier > 0 ? true : false
    }
    
    /// iPod
    private static var isIPodIdentifier = -1
    static func isIPod() -> Bool {
        if isIPodIdentifier < 0 {
            let string = UIDevice.current.model
            isIPodIdentifier = string.contains("iPod touch") ? 1 : 0
        }
        return isIPodIdentifier > 0 ? true : false
    }
    
    /// iPod
    private static var isIPhoneIdentifier = -1
    static func isIPhone() -> Bool {
        if isIPhoneIdentifier < 0 {
            let string = UIDevice.current.model
            isIPhoneIdentifier = string.contains("iPhone") ? 1 : 0
        }
        return isIPhoneIdentifier > 0 ? true : false
    }
    
}

// MARK: - UIBarButtonItem (QMUINavigationButton)
extension UIHelper {
    
}

