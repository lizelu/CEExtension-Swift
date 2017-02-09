//
//  CEStringExtension.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/2/6.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import Foundation
extension String {
    
    /// 将十六进制字符串转换成十进制数字
    var intFromHex: UInt32 {
        get {
            let scanner = Scanner(string: self)
            var result : UInt32 = 0
            if scanner.scanHexInt32(&result) {
                return result
            }
            return 0
        }
    }
}
