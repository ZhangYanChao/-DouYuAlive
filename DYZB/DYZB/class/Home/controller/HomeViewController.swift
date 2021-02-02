//
//  HomeViewController.swift
//  DYZB
//
//  Created by zyt on 2021/2/2.
//  Copyright © 2021 com.zyt.dn. All rights reserved.
//

import UIKit

class HomeViewController: YCBaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置UI界面
        setupUI()
    }
}

extension HomeViewController{
    private func setupUI(){
        
        // 设置顶部工具栏
        setupNavtionBarUI()
        
    }
    
    private func setupNavtionBarUI(){
        //logo
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo", himageName: "", size: .zero, target: self, action: #selector(logoBtnClciked))
        // 右侧 - 历史 - 查询 - 扫一扫
        let xsize = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", himageName: "Image_my_history_click", size: xsize, target: self, action: #selector(historyBtnClicked))
        let saoItem = UIBarButtonItem(imageName: "Image_scan", himageName: "Image_scan_click", size: xsize, target: self, action: #selector(saoBtnClicked))
        let searchItem = UIBarButtonItem(imageName: "btn_search", himageName: "btn_search_clicked", size: xsize, target: self, action: #selector(searchBtnClicked))
        navigationItem.rightBarButtonItems = [historyItem,saoItem,searchItem]
    }
}

extension HomeViewController{
    //logoBtn
    @objc private func logoBtnClciked(){
        print("logo 点击")
    }
    // 扫一扫
    @objc private func saoBtnClicked(){
        print("扫一扫")
    }
    // 查询
    @objc private func searchBtnClicked(){
        print("查询")
    }
    // 观看历史
    @objc private func historyBtnClicked(){
        print("观看历史")
    }
}

