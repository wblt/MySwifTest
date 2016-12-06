//
//  RootViewController.swift
//  MySwifTest
//
//  Created by mac on 16/11/16.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var tableview = UITableView()
    deinit {
        print("销毁")
    }
    
    override func loadView() {
        setUpUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
        
    }

}

extension RootViewController{
    
    fileprivate func setUpUI(){
       tableview = UITableView(frame: .zero, style: .plain)
        view = tableview
        tableview.backgroundColor = UIColor.white
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
}

extension RootViewController:UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 0
    }
    
}
