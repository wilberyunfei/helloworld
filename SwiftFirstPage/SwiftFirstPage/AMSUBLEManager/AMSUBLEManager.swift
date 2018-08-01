//
//  AMSUBLEManager.swift
//  SwiftFirstPage
//
//  Created by 阿木 on 2018/7/18.
//  Copyright © 2018年 阿木. All rights reserved.
//

import Foundation
import CoreBluetooth

protocol AMSUBLEManagerStateDelegate {
    
    func managerDidUpdateState(state:CBManagerState)
    
}



class AMSUBLEManager: NSObject,CBCentralManagerDelegate {
    
    static let defaultManager = AMSUBLEManager()
    
    private var centralManager:CBCentralManager?
    var managerStateDelegate : AMSUBLEManagerStateDelegate?
    /*蓝牙中心设备代理  CentralManager*/
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        
        self.managerStateDelegate?.managerDidUpdateState(state: central.state)
    }
    
 //  var centraManager : CBCentralManager
    
    private override init() {
        super.init()
        
        centralManager = CBCentralManager(delegate: self, queue: DispatchQueue.main)
        
        
        
    }
    
    
}
