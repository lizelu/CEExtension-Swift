//
//  ViewExtensionViewController.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/2/6.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ViewExtensionViewController: UIViewController {

    @IBOutlet var subViewYLable: UILabel!
    @IBOutlet var subViewXLabel: UILabel!
    @IBOutlet var subViewRightLabel: UILabel!
    @IBOutlet var subViewBottomLabel: UILabel!
    
    @IBOutlet var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateLabels), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.updateLabels()
    }
    
    func updateLabels() {
        self.subViewXLabel.text = "\(subView.x)"
        self.subViewYLable.text = "\(subView.y)"
        self.subViewRightLabel.text = "\(subView.right)"
        self.subViewBottomLabel.text = "\(subView.bottom)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
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
