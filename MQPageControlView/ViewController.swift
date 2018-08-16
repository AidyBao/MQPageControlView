//
//  ViewController.swift
//  MQPageControlView
//
//  Created by 120v on 2018/8/16.
//  Copyright © 2018年 MQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pageControlView: ZXPageControlView!
    
    var dataSoure = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageControlView.flipInterval = 3 // Default 2
        self.pageControlView.delegate = self
        self.pageControlView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: ZXPageControlViewDataSource {
    func zxPageControlView(_ scrollView: ZXPageControlView, pageAt index: Int) -> UIView {
        let imageV = UIImageView()
        imageV.backgroundColor = UIColor.groupTableViewBackground
        if self.dataSoure.count > 0 {
            let imgUrl = self.dataSoure[index]
//            imageV.kf.setImage(with: URL(string: imgUrl), placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
        }
        return imageV
    }
    
    
    func numberofPages(_ inScrollView: ZXPageControlView) -> Int {
//        return dataSoure.count
        return 5
    }
}

extension ViewController:ZXPageControlViewDelegate {
    func zxAutoScrolView(_ scrollView: ZXPageControlView, selectAt index: Int) {
        
    }
}


