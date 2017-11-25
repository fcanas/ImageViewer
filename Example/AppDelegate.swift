//
//  AppDelegate.swift
//  Example
//
//  Created by Rui Peres on 05/12/2015.
//  Copyright © 2015 MailOnline. All rights reserved.
//

import UIKit

import ImageViewer

extension UIApplication : Container {
    public var applicationWindow: UIWindow {
        return (UIApplication.shared.delegate?.window?.flatMap { $0 })!
    }
    
    public var isPortraitOnly: Bool {
        
        let orientations = UIApplication.shared.supportedInterfaceOrientations(for: nil)
        
        return !(orientations.contains(.landscapeLeft) || orientations.contains(.landscapeRight) || orientations.contains(.landscape))
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        SharedContainer = application
        return true
    }
}
