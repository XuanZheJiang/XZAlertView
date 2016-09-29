//
//  XZAlertView.swift
//  alert
//
//  Created by JGCM on 16/9/21.
//  Copyright © 2016年 JGCM. All rights reserved.
//

import UIKit

private var promptText: UILabel!;
private var timer: Timer?

class XZAlertView {
    
    class func addXZAlertView(view: UIView, title: String) {
        
        promptText = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width / 2, height: 30));
        promptText.center = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2 - 50);
        promptText.text = title;
        promptText.backgroundColor = UIColor(white: 0.0, alpha: 0.7);
        promptText.textColor = UIColor.white;
        promptText.textAlignment = NSTextAlignment.center;
        promptText.layer.cornerRadius = 7;
        promptText.clipsToBounds = true;
        view.addSubview(promptText);
        
        
        func shakeToUpShow(aView: UIView) {
            let animation = CAKeyframeAnimation(keyPath: "transform");
            animation.duration = 0.5;
            let values = NSMutableArray();
            values.add(NSValue(caTransform3D: CATransform3DMakeScale(0.1, 0.1, 1.0)));
            values.add(NSValue(caTransform3D: CATransform3DMakeScale(1.2, 1.2, 1.0)));
            values.add(NSValue(caTransform3D: CATransform3DMakeScale(0.9, 0.9, 1.0)));
            values.add(NSValue(caTransform3D: CATransform3DMakeScale(1.0, 1.0, 1.0)));
            animation.values = values as [AnyObject];
            aView.layer.add(animation, forKey: nil);
        }
        
        func runTime() {
            timer = Timer(timeInterval: 0.8, target: self, selector: #selector(XZAlertView.methodTime), userInfo: nil, repeats: true)
            if timer != nil {
                RunLoop.current.add(timer!, forMode: RunLoopMode.defaultRunLoopMode);
            }
        }
        
        shakeToUpShow(aView: promptText);
        runTime();
    }
    
    @objc private class func methodTime() {
        
        if (timer != nil) {
            timer!.invalidate();
            timer = nil
        }
        UIView.beginAnimations(nil, context: nil);
        UIView.setAnimationCurve(UIViewAnimationCurve.easeIn);
        UIView.setAnimationDuration(0.7);
        UIView.setAnimationDelegate(self);
        promptText.alpha = 0.0;
        UIView.commitAnimations();
        
    }
}
