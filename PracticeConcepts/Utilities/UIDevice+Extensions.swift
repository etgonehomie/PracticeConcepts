//
//  UIDevice+Extensions.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 1/29/21.
//

import UIKit

extension UIDevice {
    
    /// Defines the shorter side of the device based on the current orientation
    static var currentShorterSide: CGFloat {
        UIDevice.current.orientation.isPortrait ? UIScreen.main.bounds.width : UIScreen.main.bounds.height
    }
    
    /// Defines the longer side of the device based on the current orientation
    static var currentLongerSide: CGFloat {
        UIDevice.current.orientation.isLandscape ? UIScreen.main.bounds.width : UIScreen.main.bounds.height
    }
    
    /// Defines the width or height device anchor as the shorter or longer one
    static func currentAnchors(for view: UIView) -> (shorterAnchor: NSLayoutDimension, longerAnchor: NSLayoutDimension) {
        UIDevice.current.orientation.isPortrait ? (view.widthAnchor, view.heightAnchor) : (view.heightAnchor, view.widthAnchor)
    }
    
}
