//
//  CEScreenExtension.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
/// 屏幕型号枚举
///
/// - Mini: 3.5寸屏
/// - Small: 4寸屏
/// - Mid: 4.7寸屏
/// - Plus: 5.5寸屏
/// - Unkonw: 未知
enum CEScreenModeType : CGFloat {
    case Mini = 480  // 480 * 2 = 960
    case Small = 568  // 568 * 2 = 1136
    case Mid = 667  // 667 * 2 = 1334
    case Plus = 736   // 736 * 3 = 2208
    case Unkonw
}

extension UIScreen {
    
    /// 屏幕的高（pt）
    class var height : CGFloat {
        get {
            return  UIScreen.main.bounds.size.height
        }
    }
    
    /// 屏幕的宽（pt）
    class var width : CGFloat {
        get {
            return  UIScreen.main.bounds.size.width
        }
    }
    
    /// 当前屏幕的尺寸大小
    class var mode : CEScreenModeType {
        get {
            guard let type = CEScreenModeType.init(rawValue: UIScreen.height) else {
                return .Unkonw
            }
            return type
        }
    }

}
