//
//  UIBuilder+Switch.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UISwitch {
    @discardableResult
    public func isOn(_ isOn: Bool) -> UIBuilder {
        self.view.isOn = isOn
        return self
    }
    
    @discardableResult
    public func onTintColor(_ onTintColor: UIColor?) -> UIBuilder {
        self.view.onTintColor = onTintColor
        return self
    }
    
    @discardableResult
    public func thumbTintColor(_ thumbTintColor: UIColor?) -> UIBuilder {
        self.view.thumbTintColor = thumbTintColor
        return self
    }
    
    @discardableResult
    public func onImage(_ onImage: UIImage?) -> UIBuilder {
        self.view.onImage = onImage
        return self
    }
    
    @discardableResult
    public func offImage(_ offImage: UIImage?) -> UIBuilder {
        self.view.offImage = offImage
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func title(_ title: String?) -> UIBuilder {
        self.view.title = title
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func preferredStyle(_ preferredStyle: UISwitch.Style) -> UIBuilder {
        self.view.preferredStyle = preferredStyle
        return self
    }
}
