//
//  CEBundleExtentsion.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
extension Bundle {
    
    /// 获取App版本号
    class var appVersion : String {
        get {
            return String(describing: Bundle.main.infoDictionary!["CFBundleShortVersionString"]!)
        }
    }
    
    /// 获取Bundle名字
    class var name : String {
        get {
            var bundlePath = Bundle.main.bundlePath
            bundlePath = bundlePath.components(separatedBy: "/").last!
            bundlePath = bundlePath.components(separatedBy: ".").first!
            return bundlePath
        }
    }
}
