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
    @IBOutlet var widthSlider: UISlider!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var rotateSlider: UISlider!
    
    let img = UIImage(named: "001")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configPxSlider()
        self.configWorHSlider()
        self.configRotateSlider()
    }
    
    func configPxSlider() {
        pxSlider.minimumValue = 10
        let imgWidth = Float((img?.width)!)
        let imgHeight = Float((img?.height)!)
        
        pxSlider.maximumValue = imgWidth
        if imgHeight > imgWidth {
            pxSlider.maximumValue = imgHeight
        }
        pxSlider.value = pxSlider.maximumValue
    }
    
    func configWorHSlider() {
        widthSlider.minimumValue = 1
        widthSlider.maximumValue = Float((img?.width)!)
        widthSlider.value = Float((img?.width)!)
        
        heightSlider.minimumValue = 1
        heightSlider.maximumValue = Float((img?.height)!)
        heightSlider.value = Float((img?.height)!)
    }
    
    func configRotateSlider() {
        rotateSlider.minimumValue = 0
        rotateSlider.minimumValue = 0
        rotateSlider.maximumValue = 360

        rotateSlider.value = 0
    }

    /// 压缩图片
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapCompressButton(_ sender: UIButton) {
        testImageView.image = img?.rescaleImage(toSize: CGSize(width: 10, height: 10))
    }
    
    /// 等比缩放
    ///
    /// - Parameter sender:
    @IBAction func tapScalingImageButton(_ sender: UIButton) {
        testImageView.image = img?.imageByScaling(imageSize: CGSize(width: 100, height: 100))
    }
    
    /// 缩放到指定像素
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapPxSlider(_ sender: UISlider) {
        testImageView.image = img?.rescaleImage(toPx: CGFloat(sender.value))
    }
    
    /// 水平翻转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapHorizontalButton(_ sender: UIButton) {
        testImageView.image = testImageView.image?.flipHorizontal()
    }
    
    /// 垂直翻转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapVerticalButton(_ sender: Any) {
        testImageView.image = testImageView.image?.flipVertical()
    }
    
    /// 向下翻转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapFlipDownButton(_ sender: Any) {
        testImageView.image = testImageView.image?.flipDown()
    }
    
    /// 向左翻转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapFlipLeftButton(_ sender: Any) {
        testImageView.image = testImageView.image?.flipLeft()
    }
    
    /// 向右翻转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapFlipRightButton(_ sender: Any) {
        testImageView.image = testImageView.image?.flipRight()
    }
    
    /// 向左镜像翻转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapFlipLeftMirroredButton(_ sender: Any) {
        testImageView.image = testImageView.image?.flipLeftMirrored()
    }
    
    /// 向右镜像翻转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapFlipRightMirroredButton(_ sender: Any) {
        testImageView.image = testImageView.image?.flipRightMirrored()
    }
    
    /// 图像平铺
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapImageTileButton(_ sender: UIButton) {
        let tempImage = img?.imageByScaling(imageSize: CGSize(width: testImageView.width / 6, height: testImageView.height / 6))
        testImageView.image = tempImage?.imageTile(size: testImageView.size)
    }
    
    @IBAction func tapImageFromViewButton(_ sender: UIButton) {
        testImageView.image = UIImage.imageFromView(view: self.view)
    }
    /// 裁剪
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func tapWorHSlider(_ sender: UISlider) {
        let newImage = img?.subImage(rect: CGRect(x: 0, y: 0, width: CGFloat(widthSlider.value), height: CGFloat(heightSlider.value)))
        testImageView.image = newImage
        
    }
    
    /// 旋转
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func changeRotateSlider(_ sender: UISlider) {
        testImageView.image = img?.imageRotated(degree: CGFloat(rotateSlider.value))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
