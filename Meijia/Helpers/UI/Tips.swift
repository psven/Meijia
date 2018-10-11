//
//  Tips.swift
//  CXJ
//
//  Created by Joey on 2018/6/5.
//  Copyright © 2018年 ChuangXiangJia. All rights reserved.
//

import Foundation

class Tips: NSObject {
    
    static var delay = 1.5
    
    static private let defaultParentView = UIApplication.shared.keyWindow!
    
    /// 自动隐藏 toast 可以使用这个方法自动计算秒数
    static func smartDelay(_ text: String) -> TimeInterval {
        return QMUITips.smartDelaySeconds(forTipsText: text)
    }
    
    static func hideAllTips() -> Void {
        QMUITips.hideAllTips()
    }
    
    // loading
    static func showLoading() -> Void {
        self.showLoading(nil, detailText: nil, hideAfterDelay: self.delay)
    }
    static func showLoading(_ text: String?) -> Void {
        self.showLoading(text, detailText: nil, hideAfterDelay: self.delay)
    }
    static func showLoading(hideAfterDelay delay: TimeInterval = 1.5) -> Void {
        self.showLoading(nil, detailText: nil, hideAfterDelay: delay)
    }
    static func showLoading(_ text: String?, hideAfterDelay delay: TimeInterval) -> Void {
        self.showLoading(text, detailText: nil, hideAfterDelay: delay)
    }
    static func showLoading(_ text: String?, detailText: String?) -> Void {
        self.showLoading(text, detailText: detailText, hideAfterDelay: self.delay)
    }
    static func showLoading(_ text: String?, detailText: String?, hideAfterDelay delay: TimeInterval = 1.5) -> Void {
        self.hideAllTips()
        QMUITips.showLoading(text, detailText: detailText, in: defaultParentView, hideAfterDelay: delay)
    }
    
    // text
    static func show(_ text: String?) -> Void {
        self.show(text, detailText: nil, hideAfterDelay: self.delay)
    }
    static func show(_ text: String?, detailText: String?) -> Void {
        self.show(text, detailText: detailText, hideAfterDelay: self.delay)
    }
    static func show(_ text: String?, hideAfterDelay delay: TimeInterval) -> Void {
        self.show(text, detailText: nil, hideAfterDelay: delay)
    }
    static func show(_ text: String?, detailText: String?, hideAfterDelay delay: TimeInterval = 1.5) -> Void {
        self.hideAllTips()
        QMUITips.show(withText: text, detailText: detailText, in: defaultParentView, hideAfterDelay: delay)
    }
    
    // succeed
    static func showSucceed(_ text: String?) -> Void {
        self.showSucceed(text, detailText: nil, hideAfterDelay: self.delay)
    }
    static func showSucceed(_ text: String?, detailText: String?) -> Void {
        self.showSucceed(text, detailText: detailText, hideAfterDelay: self.delay)
    }
    static func showSucceed(_ text: String?, hideAfterDelay delay: TimeInterval) -> Void {
        self.showSucceed(text, detailText: nil, hideAfterDelay: delay)
    }
    static func showSucceed(_ text: String?, detailText: String?, hideAfterDelay delay: TimeInterval = 1.5) -> Void {
        self.hideAllTips()
        QMUITips.showSucceed(text, detailText: detailText, in: defaultParentView, hideAfterDelay: delay)
    }
    
    // info
    static func showInfo(_ text: String?) -> Void {
        self.showInfo(text, detailText: nil, hideAfterDelay: self.delay)
    }
    static func showInfo(_ text: String?, detailText: String?) -> Void {
        self.showInfo(text, detailText: detailText, hideAfterDelay: self.delay)
    }
    static func showInfo(_ text: String?, hideAfterDelay delay: TimeInterval) -> Void {
        self.showInfo(text, detailText: nil, hideAfterDelay: delay)
    }
    static func showInfo(_ text: String?, detailText: String?, hideAfterDelay delay: TimeInterval = 1.5) -> Void {
        self.hideAllTips()
        QMUITips.showInfo(text, detailText: detailText, in: defaultParentView, hideAfterDelay: delay)
    }
    
    
    
    
}
