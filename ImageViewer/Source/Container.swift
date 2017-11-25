//
//  UIApplication.swift
//  ImageViewer
//
//  Created by Kristian Angyal on 19/07/2016.
//  Copyright © 2016 MailOnline. All rights reserved.
//

import UIKit

public var SharedContainer :Container! = nil

public protocol Container {
    
    var applicationWindow: UIWindow { get }

    var isPortraitOnly: Bool { get }
    
}
