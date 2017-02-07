//
//  CENavigationBarExtension.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
var CECustomViewKey = "CECustomViewKey"
extension UINavigationBar {
    ///通过Runtime的属性关联添加自定义View
    var customView : UIView? {
        get {
            return objc_getAssociatedObject(self, &CECustomViewKey) as? UIView
        }
        
        set(newVal) {
            objc_setAssociatedObject(self, &CECustomViewKey, newVal, .OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    }
    
    /// 改变StateBar的颜色
    ///
    /// - Parameter backgroundColor: <#backgroundColor description#>
    func changeStateBarBackgroundColor(_ backgroundColor:UIColor) {
        if self.customView == nil {
            self.setBackgroundImage(UIImage(), for: .default)
            self.shadowImage = UIImage()
            self.customView = UIView(frame: CGRect(x: 0, y: -20, width: UIScreen.width, height: 20))
            self.customView!.backgroundColor = UIColor.clear
            self.addSubview(self.customView!)
        }
        self.customView!.backgroundColor = backgroundColor
    }
    
    func resetBackground() {
        self.setBackgroundImage(nil, for: .default)
        self.shadowImage = nil
        self.customView?.removeFromSuperview()
        self.customView = nil
    }
}
