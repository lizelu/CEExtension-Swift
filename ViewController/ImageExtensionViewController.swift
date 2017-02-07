//
//  ImageExtensionViewController.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/2/7.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ImageExtensionViewController: UIViewController {

    @IBOutlet var testImageView: UIImageView!
    @IBOutlet var pxSlider: UISlider!
    let img = UIImage(named: "001")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pxSlider.minimumValue = 10
        let imgWidth = Float((img?.width)!)
        let imgHeight = Float((img?.height)!)
        
        pxSlider.maximumValue = imgWidth
        if imgHeight > imgWidth {
            pxSlider.maximumValue = imgHeight
        }
        pxSlider.value = pxSlider.maximumValue
    }

    @IBAction func tapCompressButton(_ sender: UIButton) {
        let newImage = img?.rescaleImage(toSize: CGSize(width: 10, height: 10))
        testImageView.image = newImage
    }
    
    @IBAction func tapScalingImageButton(_ sender: UIButton) {
        let newImage = img?.imageByScaling(imageSize: CGSize(width: 100, height: 100))
        testImageView.image = newImage
    }
    
    @IBAction func tapPxSlider(_ sender: UISlider) {
        let newImage = img?.rescaleImage(toPx: CGFloat(sender.value))
        testImageView.image = newImage
    }
    @IBAction func tapRescaleImageToPxButton(_ sender: UIButton) {
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
