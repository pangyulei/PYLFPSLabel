//
//  SecondViewController.swift
//  PYLFPSLabel
//
//  Created by yulei pang on 2019/2/18.
//  Copyright © 2019 pangyulei. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let link = CADisplayLink.pyl_displayLink(withTarget: self, selector: #selector(sayHi))
//        link?.add(to: RunLoop.main, forMode: RunLoop.Mode.common)
        
        self.view.addSubview(FPSLabel(frame: CGRect(x: 16, y: 100, width: 0, height: 0)))
        
    }
    
    @objc private func sayHi() {
        print("hi")
    }
    
    deinit {
        print("dealloc")
    }

}
