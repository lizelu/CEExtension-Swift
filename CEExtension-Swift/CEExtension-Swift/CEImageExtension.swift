//
//  CEImageExtension.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
extension UIImage {
    func imageByScaling(imageSize: CGSize) -> UIImage? {
        let sourceImageSize = self.size
        var scaleFactor : CGFloat = 0
        var scaleWidth : CGFloat = imageSize.width
        var scaleHeight : CGFloat = imageSize.height
        var thumbnailPoint = CGPoint(x: 0, y: 0)
        var thumbnailRect = CGRect.zero
        
        if !imageSize.equalTo(sourceImageSize) {
            let widthFactor = imageSize.width / sourceImageSize.width
            let heightFactor = imageSize.height / sourceImageSize.height
            scaleFactor = widthFactor < heightFactor ? widthFactor : heightFactor
            
            scaleWidth = sourceImageSize.width * scaleFactor
            scaleHeight = sourceImageSize.height * scaleFactor
            
            if widthFactor < heightFactor {
                thumbnailPoint.y = (imageSize.height - scaleHeight) * 0.5
            } else {
                thumbnailPoint.x = (imageSize.width - scaleWidth) * 0.5
            }
        }
        thumbnailRect.origin = thumbnailPoint
        thumbnailRect.size.width = scaleWidth
        thumbnailRect.size.height = scaleHeight
        
        UIGraphicsBeginImageContext(imageSize)
        self.draw(in: thumbnailRect)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
