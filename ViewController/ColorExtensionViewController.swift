//
//  ColorExtensionViewController.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/2/6.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
enum RGBType: Int {
    case red = 0
    case green
    case blue
}

class ColorExtensionViewController: UIViewController {

    @IBOutlet var colorTextField: UITextField!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        changeSliderValue(redColorSlider)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        guard let colorStr: String = colorTextField.text else {
            return
        }
        
        self.view.backgroundColor = UIColor.colorWithHex(hex: colorStr.intFormHex)
    }

    @IBAction func changeSliderValue(_ sender: UISlider) {
        let red = UInt32(redColorSlider.value) << 16
        let green = UInt32(greenColorSlider.value) << 8
        let blue = UInt32(blueColorSlider.value)
        
        let value = red + green + blue
        let hex = String(value,radix:16)
        self.colorTextField.text = "0x\(hex)"
        self.view.backgroundColor = UIColor.colorWithHex(hex: value)
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
