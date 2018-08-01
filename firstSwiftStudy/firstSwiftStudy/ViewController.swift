//
//  ViewController.swift
//  firstSwiftStudy
//
//  Created by 阿木 on 2018/4/19.
//  Copyright © 2018年 阿木. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var str = "Hello world";
        
        func sumInt(numbers:Int...,MaxValue:Int) -> Int{
            var sumCount = 0
            
            for number in numbers {
                guard number < MaxValue else {
                    break
                }
                sumCount += number
            }
            
            return sumCount
            
        }
        
        print("3+4=\(sumInt(numbers: 2,3,4,5,6,7,8, MaxValue:4))")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

