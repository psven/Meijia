//
//  BasicViewController.swift
//  Meijia
//
//  Created by Joey on 2018/9/24.
//  Copyright © 2018年 Meijia. All rights reserved.
//

import Foundation

class MJBasicViewController: QMUICommonViewController {
    
    
    
    /**
     *  初始化时调用的方法，会在两个 NS_DESIGNATED_INITIALIZER 方法中被调用，所以子类如果需要同时支持两个 NS_DESIGNATED_INITIALIZER 方法，则建议把初始化时要做的事情放到这个方法里。否则仅需重写要支持的那个 NS_DESIGNATED_INITIALIZER 方法即可。
     */
    override func didInitialize() {
        super.didInitialize()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 启动相关配置，如埋点统计
        // Analyse.beginTrack
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Analyse.endTrack
    }
    
}


// MARK: - SubclassHooks
// 子类中 自定义视图、NavigationItems、ToolbarItems 都在以下三个方法实现，目的在于分类代码。
extension MJBasicViewController {
    
    /**
     *  负责初始化和设置controller里面的view，也就是self.view的subView。目的在于分类代码，所以与view初始化的相关代码都写在这里。
     *
     *  @warning initSubviews只负责subviews的init，不负责布局。布局相关的代码应该写在 <b>viewDidLayoutSubviews</b>
     */
    override func initSubviews() {
        super.initSubviews()
        
        self.view.backgroundColor = UIColorBackground
        
        // 全局配置
//        self.title = ""
//        self.view.backgroundColor = .gray
        
    }
    
    /**
     *  负责设置和更新navigationItem，包括title、leftBarButtonItem、rightBarButtonItem。viewWillAppear 里面会自动调用，业务也可以在需要的时候自行调用。目的在于分类代码，所有与navigationItem相关的代码都写在这里。在需要修改navigationItem的时候都统一调用这个接口。
     */
    override func setupNavigationItems() {
        super.setupNavigationItems()
        
    }
    
    /**
     *  负责设置和更新toolbarItem。在viewWillAppear里面自动调用（因为toolbar是navigationController的，是每个界面公用的，所以必须在每个界面的viewWillAppear时更新，不能放在viewDidLoad里），允许手动调用。目的在于分类代码，所有与toolbarItem相关的代码都写在这里。在需要修改toolbarItem的时候都只调用这个接口。
     */
    override func setupToolbarItems() {
        super.setupToolbarItems()
        
    }
}
