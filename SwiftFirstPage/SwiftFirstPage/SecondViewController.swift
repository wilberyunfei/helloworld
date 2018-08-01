//
//  SecondViewController.swift
//  SwiftFirstPage
//
//  Created by 阿木 on 2018/7/18.
//  Copyright © 2018年 阿木. All rights reserved.
//

import Foundation
import UIKit
import CoreBluetooth

class SecondViewController: UIViewController,AMSUBLEManagerStateDelegate {
    func managerDidUpdateState(state: CBManagerState) {
        print(state)
    }
    
    
    override func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.green
        self.initBle()
    }
    
    @objc func initBle(){
        
        let bleManager = AMSUBLEManager.defaultManager
        bleManager.managerStateDelegate = self
        
        
        let bleLabel = UILabel(frame: CGRect(x: 50, y: 100, width: 100, height: 50))
        bleLabel.text = "按钮"
        bleLabel.textColor = UIColor.red
        self.view.addSubview(bleLabel)
        
        
    }
}
