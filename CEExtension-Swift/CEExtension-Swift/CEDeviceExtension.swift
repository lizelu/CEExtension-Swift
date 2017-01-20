//
//  CEDeviceExtension.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

extension UIDevice {
    /// 当前设备的系统版本
    class var currentSystemVersion : String {
        get {
            return UIDevice.current.systemVersion
        }
    }
    
    /// 当前系统的名称
    class var currentSystemName : String {
        get {
            return UIDevice.current.systemName
        }
    }

}
