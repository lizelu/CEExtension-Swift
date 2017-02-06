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
    
    func testScreenExtension() {
        let screenHeight = UIScreen.height
        print("屏幕高：\(screenHeight)")
        
        let screenWidth = UIScreen.width
        print("屏幕高：\(screenWidth)")
        
        let mode = UIScreen.mode
        print("屏幕尺寸大小\(mode.description)")
    }
    
    func testBundleExtension() {
        let bundleName = Bundle.name
        print("BundlName: \(bundleName)")
        
        let appVersion = Bundle.appVersion
        print("app版本号：\(appVersion)")

        let appName = Bundle.appName
        print("app名称：\(appName)")
    }
    
    func testViewExtension() {
        let testView = UIView(frame: CGRect(x: 10, y: 20, width: 60, height: 80))
        
        print("x: \(testView.x)")
        print("y: \(testView.y)")
        print("width: \(testView.width)")
        print("height: \(testView.height)")
        print("left: \(testView.left)")
        print("right: \(testView.right)")
        print("top: \(testView.top)")
        print("bottom: \(testView.bottom)")
        print("centerX: \(testView.centerX)")
        print("centerY: \(testView.centerY)")
        print("middleWidth: \(testView.middleWidth)")
        print("middleHeight: \(testView.middleHeight)")
        print("size: \(testView.size)")
        print("origin: \(testView.origin)")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
