//
//  ViewController.swift
//  SwiftFirstPage
//
//  Created by 阿木 on 2018/7/18.
//  Copyright © 2018年 阿木. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let saveBtn = UIButton(frame: CGRect(x:15,y:84,width:100,height:50))
        saveBtn.backgroundColor = UIColor.blue
     //   saveBtn.title(for: normal)
        saveBtn.setTitle("第一次创建按钮", for: .normal)
        saveBtn.addTarget(self, action:#selector(firstBtnAction), for: .touchUpInside)
        self.view.addSubview(saveBtn)
        
        self.view.backgroundColor = UIColor.white
        self.title = "第一次创建导航栏，屌屌的"
        
        
        var a = 3
        let b = "abc"
        a = 4
        
        
        print(a,b);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func firstBtnAction(){
        print("first btn")
        
        let vc = SecondViewController()
        
        self.navigationController!.pushViewController(vc, animated: true)
        
    }

}

