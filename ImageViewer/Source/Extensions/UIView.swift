//
//  UIView.swift
//  ImageViewer
//
//  Created by Kristian Angyal on 29/02/2016.
//  Copyright © 2016 MailOnline. All rights reserved.
//

import UIKit

extension UIView {

    public var boundsCenter: CGPoint {

        return CGPoint(x: self.bounds.width / 2, y: self.bounds.height / 2)
    }

    func frame(inCoordinatesOfView parentView: UIView) -> CGRect {

        let frameInWindow = SharedContainer.applicationWindow.convert(self.bounds, from: self)
        return parentView.convert(frameInWindow, from: SharedContainer.applicationWindow)
    }

    func addSubviews(_ subviews: UIView...) {

        for view in subviews { self.addSubview(view) }
    }

    static func animateWithDuration(_ duration: TimeInterval, delay: TimeInterval, animations: @escaping () -> Void) {

        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions(), animations: animations, completion: nil)
    }

    static func animateWithDuration(_ duration: TimeInterval, delay: TimeInterval, animations: @escaping () -> Void, completion: ((Bool) -> Void)?) {

        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions(), animations: animations, completion: completion)
    }
}

extension DisplaceableView {

    func frameInCoordinatesOfScreen() -> CGRect {

        return UIView().convert(self.bounds, to: UIScreen.main.coordinateSpace)
    }
}
