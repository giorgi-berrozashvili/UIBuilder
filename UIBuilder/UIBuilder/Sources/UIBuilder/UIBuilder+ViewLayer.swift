//
//  UIBuilder+ViewLayer.swift
//  UIBuilder
//
//  Created by Giorgi Berozashvili on 21.04.22.
//

import UIKit

extension UIBuilder {
    @discardableResult
    open func layer(_ action: (_ layer: CALayer) -> Void) -> UIBuilder {
        action(view.layer)
        return self
    }
    
    @discardableResult
    open func cornerRadius(_ radius: CGFloat) -> UIBuilder {
        self.view.layer.cornerRadius = radius
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func cornerRadius(_ radius: CGFloat, corners: CACornerMask) -> UIBuilder {
        self.view.layer.cornerRadius = radius
        self.view.layer.maskedCorners = corners
        return self
    }
}
