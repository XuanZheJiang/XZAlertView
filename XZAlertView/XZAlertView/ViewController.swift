//
//  ViewController.swift
//  XZAlertView
//
//  Created by JGCM on 16/9/29.
//  Copyright © 2016年 蒋轩哲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        XZAlertView.addXZAlertView(view: view, title: "XZAlertView");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

