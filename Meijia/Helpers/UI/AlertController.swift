//
//  AlertController.swift
//  Meijia
//
//  Created by Joey on 2018/10/18.
//  Copyright © 2018年 Meijia. All rights reserved.
//

import Foundation

class AlertController {
    
}


// MARK: - AlertController
extension AlertController {
    
    typealias ActionHandler = (QMUIAlertController?, QMUIAlertAction?) -> Void
    
    // 快速创建一个选取图片的 AlertController
    static func photoAlertController(cameraHandler: @escaping ActionHandler, photoHandler: @escaping ActionHandler) -> Void {
        self.alertController(title: "选取图片", message: nil, action1Title: "拍照", action1Handler: cameraHandler, action2Title: "相册", action2Handler: photoHandler)
    }
    
    static func alertController(title: String?, message: String?, action1Title: String!, action1Handler: @escaping ActionHandler, action2Title: String!, action2Handler: @escaping ActionHandler) -> Void {
        self.alertController(title: title, message: message, preferredStyle: .alert, action1Title: action1Title, action1Handler: action1Handler, action2Title: action2Title, action2Handler: action2Handler)
    }
    
    static func alertController(title: String?, message: String?, preferredStyle: QMUIAlertControllerStyle, action1Title: String!, action1Handler: @escaping ActionHandler, action2Title: String!, action2Handler: @escaping ActionHandler) -> Void {
        let alertCon = QMUIAlertController.init(title: title, message: message, preferredStyle: preferredStyle)
        let action1 = QMUIAlertAction.init(title: action1Title, style: .default, handler: action1Handler)
        let action2 = QMUIAlertAction.init(title: action2Title, style: .default, handler: action2Handler)
        let cancel = QMUIAlertAction.init(title: "取消", style: .destructive, handler: nil)
        alertCon.addAction(action1)
        alertCon.addAction(action2)
        alertCon.addAction(cancel)
        alertCon.showWith(animated: true)
    }
    
    // TODO: 添加一个带自定义样式的快捷生成方法
    
}
