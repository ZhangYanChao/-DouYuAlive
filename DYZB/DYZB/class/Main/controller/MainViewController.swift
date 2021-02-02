//
//  MainViewController.swift
//  DYZB
//
//  Created by zyt on 2021/2/1.
//  Copyright © 2021 com.zyt.dn. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        loadVC(xname: "Home")
        loadVC(xname: "Live")
        loadVC(xname: "Follow")
        loadVC(xname: "Mine")
    }
    
    func loadVC(xname:String) -> Void {
        let childVC = UIStoryboard.init(name: xname, bundle: nil).instantiateInitialViewController()!
        self.addChild(childVC)
    }
    
}
