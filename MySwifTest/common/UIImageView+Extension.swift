//
//  HeadCell.swift
//  MySwifTest
//
//  Created by mac on 16/11/16.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

extension UIImageView {
    
    
    convenience init(imageName:String){
        self.init()

        self.image = UIImage(named: imageName)
        
        
        sizeToFit()
    }
    
    
    
}
