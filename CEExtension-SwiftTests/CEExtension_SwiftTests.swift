//
//  CEExtension_SwiftTests.swift
//  CEExtension-SwiftTests
//
//  Created by Mr.LuDashi on 2017/2/6.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import XCTest
import UIKit

class CEExtension_SwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testColorExtension() {
        let color: UIColor? = UIColor.colorWithHex(hex: 0xff00ff)
        XCTAssertNotNil(color)
        print("color初始化成功")
    }
    
    func testDeviceExtension() {
        let systemName: String? = UIDevice.currentSystemName
        XCTAssertNotNil(systemName)
        print("设备系统名称：\(systemName!)")
        
        let systemVersion: String? = UIDevice.currentSystemVersion
        XCTAssertNotNil(systemVersion)
        print("设备系统版本：\(systemVersion!)")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
