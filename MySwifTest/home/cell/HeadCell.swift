//
//  HeadCell.swift
//  MySwifTest
//
//  Created by mac on 16/11/16.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit




class HeadCell: UITableViewCell {

   override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = UIColor.red
   
        setupUI()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension HeadCell{
    
    fileprivate func setupUI(){
        let  cycleview = CLCycleScrollView(frame: CGRect(x: 0, y: 0, width: KScreenWidht, height: 200))
        
        contentView.addSubview(cycleview)
    }
    
}
