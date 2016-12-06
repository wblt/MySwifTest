//
//  OneViewController.swift
//  MySwifTest
//
//  Created by mac on 16/11/16.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit


let homeIdentifier:String = "homecell"
let scrollIdentifier:String = "scrollcell"
let listIdentifier:String = "listcell"
let defaultIdentifier:String = "defaultcell"
class OneViewController: RootViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
 
        
        tableview.register(HeadCell.self, forCellReuseIdentifier: homeIdentifier)
        
        tableview.register(scrollCell.self, forCellReuseIdentifier: scrollIdentifier)
        tableview.register(listCell.self, forCellReuseIdentifier: listIdentifier)
        tableview.register(defaultCell.self, forCellReuseIdentifier: defaultIdentifier)
        
        
    }

}


extension OneViewController{
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section<3 {
            return 1;
        }
        return 100;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            
            return 200
        }
        else if indexPath.section == 1 && indexPath.row == 0 {
            
            return KScreenWidht/2
        }
        return 80
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell = tableview.dequeueReusableCell(withIdentifier: homeIdentifier, for: indexPath)
            break
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: scrollIdentifier, for: indexPath)
            break
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: listIdentifier, for: indexPath)
            break

        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: defaultIdentifier, for: indexPath) as! defaultCell
            
            cell.indexPath = indexPath
            
            return cell

        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.row)
        
    }
  
    
    
}
