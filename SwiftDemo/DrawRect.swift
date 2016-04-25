
//
//  DrawRect.swift
//  SwiftDemo
//
//  Created by coretate on 3/2/16.
//  Copyright © 2016 coretate. All rights reserved.
//

import UIKit

class DrawRect: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let contentColor: UIColor = UIColor.blackColor()
        let besierPath: UIBezierPath = UIBezierPath()
        besierPath.moveToPoint(CGPointMake(40, 100))
        besierPath.addLineToPoint(CGPointMake(100, 100))
        besierPath.addLineToPoint(CGPointMake(70, 300))
        besierPath.lineWidth = 2
        besierPath.closePath()
        
        contentColor.setFill()
        besierPath.fill()
        
        let strokerColor: UIColor = UIColor.redColor()
        strokerColor.setStroke()
        besierPath.stroke()
    }
    

}

