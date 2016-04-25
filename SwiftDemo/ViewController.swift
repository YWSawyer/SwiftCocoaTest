//
//  ViewController.swift
//  SwiftDemo
//
//  Created by coretate on 3/1/16.
//  Copyright © 2016 coretate. All rights reserved.
//

/**
*   模板
*
**/

import UIKit

/**
 *************************************** KVO测试 **************************************
 *
    class person:NSObject {
        dynamic var name:String!
        var age:UInt8!
        var sex:String!
        
    }
**************************************************************************************/


class ViewController: UIViewController {
   
/**
 * 
 ***************************************CGAffineTransformMakeScale测试**************************************
     
    var _imageView: UIImageView!
    var btnSlect: Bool = true
********************************************************************************************************************/

    
/**
 *************************************** KVO测试**************************************
 *
    var sawyer:person!
    var btnCount:UInt8 = 0
******************************************************************************/
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.automaticallyAdjustsScrollViewInsets = false
        self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        
/**
 *
 ***************************************UIView 层级排列测试**************************************
         
        
        let greenView: UIView = UIView(frame: CGRect(x: 20, y: 20, width: 200, height: 300))
        greenView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(greenView)
        
        let yellowView: UIView = UIView(frame: CGRect(x: 30, y: 30, width: 100, height: 200))
        yellowView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellowView)

        
        let blueView: UIView = UIView(frame: CGRect(x: 20, y: 20, width: 200, height: 400))
        blueView.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueView)
        
        self.view.exchangeSubviewAtIndex(3, withSubviewAtIndex: 4)
        self.view.insertSubview(blueView, atIndex: 0)
        
        
        
        print("count is \(self.view.subviews.count)")
        
        for subview: UIView in self.view.subviews {
            print("frame is : \(subview)")
        }
        
        self.view.insertSubview(blueView, atIndex: 0)
 
********************************************************************************************************************/
        
/**
 * 
 ***************************************CGAffineTransformMakeScale  测试**************************************

        let btn: UIButton = UIButton(type: UIButtonType.Custom)
        btn.frame = CGRect(x: 20, y: 20, width: 50, height: 50)
        btn.backgroundColor = UIColor.greenColor()
        btn.addTarget(self, action: "scaleImage", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        let imageView: UIImageView = UIImageView(image: UIImage(named: "Screen Shot 2016-03-01 at 1.32.37 PM"))
        imageView.frame = CGRect(x: 10, y: 200, width: 300, height: 400)
        imageView.contentMode = UIViewContentMode.ScaleToFill
        _imageView = imageView
        self.view.addSubview(imageView)
        
********************************************************************************************************************/
        
/**
 *************************************** DrawRect方法重写绘画**************************************
 *
        let drawRect: DrawRect = DrawRect(frame: CGRect(x: 20, y: 20, width: 200, height: 400))
        drawRect.backgroundColor = UIColor.greenColor()
        self.view.addSubview(drawRect)
********************************************************************************************************************/

        
/**
 *************************************** KVO测试**************************************
 *        
        sawyer = person()
        sawyer.addObserver(self, forKeyPath: "name", options: NSKeyValueObservingOptions.New, context: nil)
        let btn = UIButton(type: UIButtonType.Custom)
        btn.frame = CGRectMake(30, 100, 100, 100)
        self.view.addSubview(btn)
        btn.backgroundColor = UIColor.grayColor()
        btn.addTarget(self, action: #selector(ViewController.changeValueAction), forControlEvents: .TouchUpInside)
         
********************************************************************************************************************/
    }

/**
 *************************************** KVO测试**************************************
 *
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if keyPath == "name" {
            print("object is \(object)")
            print("change is :\(change)")
        }
    }
********************************************************************************************************************/
        
        
        
/**
 * 
 ***************************************CGAffineTransformMakeScale  测试**************************************

    func scaleImage() {
        if self.btnSlect {
            self.btnSlect = !self.btnSlect
            UIView.animateWithDuration(0.2) { () -> Void in
                self._imageView.transform = CGAffineTransformMakeScale(0.1, 0.1)
            }
        }else{
            self.btnSlect = !self.btnSlect
            UIView.animateWithDuration(0.2) { () -> Void in
                self._imageView.transform = CGAffineTransformIdentity
            }
        }
     
    }
********************************************************************************************************************/
   
    
/**
 *************************************** KVO测试**************************************
 *
    func changeValueAction() {
        sawyer.name = "sawyer"

        print("sawyer.name is \(sawyer.name)")
    }
********************************************************************************************************************/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

