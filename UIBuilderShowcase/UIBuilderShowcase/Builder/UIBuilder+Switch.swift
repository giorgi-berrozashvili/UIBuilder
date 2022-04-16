//
//  UIBuilder+Switch.swift
//  UIBuilderShowcase
//
//  Created by Giorgi Berozashvili on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType == UISwitch {
    @discardableResult
    open func isOn(_ isOn: Bool) -> UIBuilder<UISwitch> {
        self.view.isOn = isOn
        return self
    }
    
    @discardableResult
    open func onTintColor(_ onTintColor: UIColor?) -> UIBuilder<UISwitch> {
        self.view.onTintColor = onTintColor
        return self
    }
    
    @discardableResult
    open func thumbTintColor(_ thumbTintColor: UIColor?) -> UIBuilder<UISwitch> {
        self.view.thumbTintColor = thumbTintColor
        return self
    }
    
    @discardableResult
    open func onImage(_ onImage: UIImage?) -> UIBuilder<UISwitch> {
        self.view.onImage = onImage
        return self
    }
    
    @discardableResult
    open func offImage(_ offImage: UIImage?) -> UIBuilder<UISwitch> {
        self.view.offImage = offImage
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func title(_ title: String?) -> UIBuilder<UISwitch> {
        self.view.title = title
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func preferredStyle(_ preferredStyle: UISwitch.Style) -> UIBuilder<UISwitch> {
        self.view.preferredStyle = preferredStyle
        return self
    }
}
