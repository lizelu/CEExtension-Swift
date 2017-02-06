//
//  CEColoreExtension.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
extension UIColor {
    
    /// 通过浮点数字来设置颜色
    ///
    /// - Parameters:
    ///   - red: R
    ///   - green: G
    ///   - blue: B
    /// - Returns: 相应的颜色对象
    class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    
    /// 通过16进制设置颜色
    ///
    /// - Parameter hex: 0x00ffad
    /// - Returns: 相应的颜色对象
    class func colorWithHex(hex: UInt32) -> UIColor {
        let r: CGFloat = CGFloat((hex & 0xff0000) >> 16)
        let g: CGFloat = CGFloat((hex & 0x00ff00) >> 8)
        let b: CGFloat = CGFloat(hex & 0x0000ff)
        
        return rgb(red: r, green: g, blue: b)
    }

}
