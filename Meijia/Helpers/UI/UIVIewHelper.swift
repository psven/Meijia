//
//  UIVIewHelper.swift
//  CXJ
//
//  Created by Joey on 2018/6/24.
//  Copyright © 2018年 ChuangXiangJia. All rights reserved.
//

import Foundation

// MARK: - Frame
extension UIView {
    var top: CGFloat {
        get {
            return self.frame.minY
        }
        set {
            self.qmui_top = newValue
        }
    }
    
    var left: CGFloat {
        get {
            return self.frame.minX
        }
        set {
            self.qmui_left = newValue
        }
    }
    
    var bottom: CGFloat {
        get {
            return self.frame.maxY
        }
        set {
            self.qmui_bottom = newValue
        }
    }
    
    var right: CGFloat {
        get {
            return self.frame.maxX
        }
        set {
            self.qmui_right = newValue
        }
    }
    
    var width: CGFloat {
        get {
            return self.frame.width
        }
        set {
            self.qmui_width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.height
        }
        set {
            self.qmui_height = newValue
        }
    }
    
    var midX: CGFloat {
        get {
            return self.frame.midX
        }
    }
    
    var midY: CGFloat {
        get {
            return self.frame.midY
        }
    }
    
    // Extend
    
    var extendToTop: CGFloat {
        get {
            return self.top
        }
        set {
            self.qmui_extendToTop = newValue
        }
    }
    var extendToLeft: CGFloat {
        get {
            return self.left
        }
        set {
            self.qmui_extendToLeft = newValue
        }
    }
    var extendToBottom: CGFloat {
        get {
            return self.bottom
        }
        set {
            self.qmui_extendToBottom = newValue
        }
    }
    var extendToRight: CGFloat {
        get {
            return self.right
        }
        set {
            self.qmui_extendToRight = newValue
        }
    }
    
    //  Center
    
    var leftWhenCenterInSuperview: CGFloat {
        return self.qmui_leftWhenCenterInSuperview
    }
    
    var topWhenCenterInSuperview: CGFloat {
        return self.qmui_topWhenCenterInSuperview
    }
    
}


// MARK: - Snapshot
extension UIView {
    func snapshotLayerImage() -> UIImage {
        return UIImage.image(withView: self)
    }
    func snapshotImageAfterScreenUpdates(_ afterScreenUpdates: Bool) -> UIImage {
        return UIImage.image(withView: self, afterScreenUpdates: afterScreenUpdates)
    }
}




