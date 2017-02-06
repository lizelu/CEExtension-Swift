//
//  DeviceExtensionViewController.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/2/6.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class DeviceExtensionViewController: UIViewController {

    @IBOutlet var systemNameAndVersionLabel: UILabel!
    @IBOutlet var appNameAndVersionLabel: UILabel!
    @IBOutlet var screenInfoLabel: UILabel!
    @IBOutlet var bundleNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.systemNameAndVersionLabel.text = "\(UIDevice.currentSystemName),\(UIDevice.currentSystemVersion)"
        self.appNameAndVersionLabel.text = "\(Bundle.appName), \(Bundle.appVersion)"
        self.screenInfoLabel.text = "\(UIScreen.mode.description),(\(UIScreen.width),\(UIScreen.height))"
        self.bundleNameLabel.text = "\(Bundle.name)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
