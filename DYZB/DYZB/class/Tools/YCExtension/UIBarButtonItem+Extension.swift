//
//  UIBarButtonItem+Extension.swift
//  DYZB
//
//  Created by zyt on 2021/2/2.
//  Copyright © 2021 com.zyt.dn. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    /*
    class func customItem(imageName:String,himageName:String,size:CGSize)->UIBarButtonItem{
        let btn = UIButton()
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        btn.setImage(UIImage.init(named: himageName), for: .normal)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        return UIBarButtonItem(customView: btn)
    }
     */
    convenience init(imageName:String,himageName:String = "",size:CGSize = CGSize.zero,target: Any, action: Selector) {
        let btn = UIButton()
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        if  himageName != "" {
            btn.setImage(UIImage.init(named: himageName), for: .highlighted)
        }
        if size == CGSize.zero{
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        self.init(customView: btn)
        self.target = target as AnyObject
        self.action = action
    }
}
