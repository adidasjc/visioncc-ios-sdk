//
//  UIView+Extension.swift
//  YLBaseChat
//
//  Created by yl on 17/5/22.
//  Copyright © 2017年 yl. All rights reserved.
//

import Foundation
import UIKit


// MARK: - 获取view所在的控制器
extension UIView {
    
    func getVC() -> UIViewController? {
        
        let n = next
        
        while n != nil {
            
            let controller = next?.next
            
            if (controller is UIViewController) {
                
                return controller as? UIViewController
            }
        }
        
        return nil
    }
    
}

// MARK: - 自适应AutoLayout
extension UIView {
    
    func yl_refreshFrame() {
        setNeedsLayout()
        layoutIfNeeded()
    }
    
    func yl_autoH() {
        setContentHuggingPriority(UILayoutPriority.required, for: NSLayoutConstraint.Axis.vertical)
        setContentCompressionResistancePriority(UILayoutPriority.required, for: NSLayoutConstraint.Axis.vertical)
    }
    
    func yl_autoW() {
        setContentHuggingPriority(UILayoutPriority.required, for: NSLayoutConstraint.Axis.horizontal)
        setContentCompressionResistancePriority(UILayoutPriority.required, for: NSLayoutConstraint.Axis.horizontal)
    }
}

// MARK: - UIView frame
extension UIView {
    
    // yl_x
    var yl_x : CGFloat {
        
        get {
            
            return frame.origin.x
        }
        
        set(newVal) {
            
            var tmpFrame : CGRect = frame
            tmpFrame.origin.x     = newVal
            frame                 = tmpFrame
        }
    }
    
    // yl_y
    var yl_y : CGFloat {
        
        get {
            
            return frame.origin.y
        }
        
        set(newVal) {
            
            var tmpFrame : CGRect = frame
            tmpFrame.origin.y     = newVal
            frame                 = tmpFrame
        }
    }
    
    // yl_height
    var yl_height : CGFloat {
        
        get {
            
            return frame.size.height
        }
        
        set(newVal) {
            
            var tmpFrame : CGRect = frame
            tmpFrame.size.height  = newVal
            frame                 = tmpFrame
        }
    }
    
    // yl_width
    var yl_width : CGFloat {
        
        get {
            
            return frame.size.width
        }
        
        set(newVal) {
            
            var tmpFrame : CGRect = frame
            tmpFrame.size.width   = newVal
            frame                 = tmpFrame
        }
    }
    
    // yl_left
    var yl_left : CGFloat {
        
        get {
            
            return yl_x
        }
        
        set(newVal) {
            
            yl_x = newVal
        }
    }
    
    // yl_right
    var yl_right : CGFloat {
        
        get {
            
            return yl_x + yl_width
        }
        
        set(newVal) {
            
            yl_x = newVal - yl_width
        }
    }
    
    // yl_top
    var yl_top : CGFloat {
        
        get {
            
            return yl_y
        }
        
        set(newVal) {
            
            yl_y = newVal
        }
    }
    
    // yl_bottom
    var yl_bottom : CGFloat {
        
        get {
            
            return yl_y + yl_height
        }
        
        set(newVal) {
            
            yl_y = newVal - yl_height
        }
    }
    
    var yl_centerX : CGFloat {
        
        get {
            
            return center.x
        }
        
        set(newVal) {
            
            center = CGPoint(x: newVal, y: center.y)
        }
    }
    
    var yl_centerY : CGFloat {
        
        get {
            
            return center.y
        }
        
        set(newVal) {
            
            center = CGPoint(x: center.x, y: newVal)
        }
    }
    
    var yl_middleX : CGFloat {
        
        get {
            
            return yl_width / 2
        }
    }
    
    var yl_middleY : CGFloat {
        
        get {
            
            return yl_height / 2
        }
    }
    
    var yl_middlePoint : CGPoint {
        
        get {
            
            return CGPoint(x: yl_middleX, y: yl_middleY)
        }
    }
    
}

//MARK: - UIScrollView
extension UIScrollView {
    
    func yl_scrollToBottom(Animated animated:Bool) {
        var off:CGPoint = self.contentOffset
        off.y = self.contentSize.height - self.bounds.size.height + self.contentInset.bottom
        debugPrint("yl_scrollToBottom:\(off)")
        self.setContentOffset(off, animated: animated)
    }
}
