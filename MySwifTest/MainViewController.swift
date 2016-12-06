//
//  MainViewController.swift
//  MySwifTest
//
//  Created by mac on 16/11/16.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
}

extension MainViewController{
    fileprivate func setUpUI(){
        
        addChildViewController(title: "首页", vc: OneViewController(), imageName: "tabbar_home")
           addChildViewController(title: "发现", vc: TwoViewController(), imageName: "tabbar_discover")
           addChildViewController(title: "设置", vc: ThreeViewController(), imageName: "tabbar_discover")
        
    }
    
    fileprivate func addChildViewController(title:String,vc:UIViewController,imageName:String){
        vc.title = title
        // 设置默认图片
        vc.tabBarItem.image = UIImage(named: imageName)
        // 设置高亮图片
        vc.tabBarItem.selectedImage = UIImage(named: imageName+"_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .selected)
        let nav = UINavigationController(rootViewController: vc)
        addChildViewController(nav)
        
        
    }
        
}
    
    


