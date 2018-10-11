//
//  MJTabBarController.swift
//  Meijia
//
//  Created by Joey on 2018/9/24.
//  Copyright © 2018年 Meijia. All rights reserved.
//

import Foundation

class MJTabBarController: UITabBarController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        // Appearance
        let normalAttrs = [NSAttributedStringKey.foregroundColor: tabBarItemTitleColorNormal,
                           NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12)]
        let selectedAttrs = [NSAttributedStringKey.foregroundColor: tabBarItemTitleColorSelected,
                             NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12)]
        UITabBarItem.appearance().setTitleTextAttributes(normalAttrs, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttrs, for: .selected)
        
        
        let designVC = MJNavigationController.init(rootViewController: DesignViewController())
        designVC.hidesBottomBarWhenPushed = false
        designVC.tabBarItem = UITabBarItem.init(title: "设计", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
        
        let communityVC = MJNavigationController.init(rootViewController: CommunityViewController())
        communityVC.hidesBottomBarWhenPushed = false
        communityVC.tabBarItem = UITabBarItem.init(title: "社区", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
        
        let mineVC = MJNavigationController.init(rootViewController: MineViewController())
        mineVC.hidesBottomBarWhenPushed = false
        mineVC.tabBarItem = UITabBarItem.init(title: "我的", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
        
        self.viewControllers = [designVC, communityVC, mineVC]
        
    }
    
    
}
