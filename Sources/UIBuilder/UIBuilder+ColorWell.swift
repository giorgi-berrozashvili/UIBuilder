//
//  UIBuilder+ColorWell.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

@available(iOS 14.0, *)
extension UIBuilder where ViewType == UIColorWell {
    @discardableResult
    open func selectedColor(_ selectedColor: UIColor?) -> UIBuilder<UIColorWell> {
        self.view.selectedColor = selectedColor
        return self
    }
    
    @discardableResult
    open func supportsAlpha(_ supportsAlpha: Bool) -> UIBuilder<UIColorWell> {
        self.view.supportsAlpha = supportsAlpha
        return self
    }
    
    @discardableResult
    open func title(_ title: String?) -> UIBuilder<UIColorWell> {
        self.view.title = title
        return self
    }
}
