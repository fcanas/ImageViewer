//
//  CALayer.swift
//  ImageViewer
//
//  Created by Kristian Angyal on 29/07/2016.
//  Copyright © 2016 MailOnline. All rights reserved.
//

import UIKit

extension CALayer {

    public func toImage() -> UIImage {

        if #available(iOSApplicationExtension 10.0, *) {
            let renderer = UIGraphicsImageRenderer(size: self.frame.size)
            return renderer.image { (context) in
                context.cgContext.setFillColor(UIColor.white.cgColor)
                context.cgContext.setStrokeColor(UIColor.clear.cgColor)
                self.render(in: context.cgContext)
            }
        } else {
            UIGraphicsBeginImageContextWithOptions(self.frame.size, false, 0)
            let context = UIGraphicsGetCurrentContext()
            context?.setFillColor(UIColor.white.cgColor)
            context?.setStrokeColor(UIColor.clear.cgColor)
            self.render(in: context!)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()

            return image!
        }

    }
}
