//
//  FPSLabel.swift
//  PYLFPSLabel
//
//  Created by yulei pang on 2019/2/18.
//  Copyright © 2019 pangyulei. All rights reserved.
//

import UIKit

class FPSLabel: UILabel {
    var last: CFTimeInterval = 0
    var frames: Double = 0

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let link = CADisplayLink.pyl_displayLink(withTarget: self, selector:#selector(callPerFrame))
        link?.add(to: RunLoop.main, forMode: RunLoop.Mode.common)
        self.backgroundColor = UIColor.red.withAlphaComponent(0.7)
        self.textColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func callPerFrame(link: CADisplayLink) {
        if 0 == last {
            last = link.timestamp
            return
        }
        frames = frames + 1 //记录帧数
        let delta = link.timestamp - last
        if delta < 1 {
            return;
        }
        //超过一秒算算每秒多少帧
        let fps = frames / delta //帧数除以秒数
        self.text = String(format: "%.2f FPS", fps)
        sizeToFit()
        frames = 0
        last = link.timestamp
    }

}
