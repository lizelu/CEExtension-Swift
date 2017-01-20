//
//  CEBundleExtentsion.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
extension Bundle {
    class var appVersion : String {
        get {
            return String(describing: Bundle.main.infoDictionary!["CFBundleShortVersionString"]!)
        }
    }
}
