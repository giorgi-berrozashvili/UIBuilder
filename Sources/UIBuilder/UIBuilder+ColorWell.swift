//
//  UIBuilder+ColorWell.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

@available(iOS 14.0, *)
extension UIBuilder where ViewType: UIColorWell {
    @discardableResult
    public func selectedColor(_ selectedColor: UIColor?) -> UIBuilder {
        self.view.selectedColor = selectedColor
        return self
    }
    
    @discardableResult
    public func supportsAlpha(_ supportsAlpha: Bool) -> UIBuilder {
        self.view.supportsAlpha = supportsAlpha
        return self
    }
    
    @discardableResult
    public func title(_ title: String?) -> UIBuilder {
        self.view.title = title
        return self
    }
}
