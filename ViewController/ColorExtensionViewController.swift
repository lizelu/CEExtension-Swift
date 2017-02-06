//
//  ColorExtensionViewController.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/2/6.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ColorExtensionViewController: UIViewController {

    @IBOutlet var colorTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
