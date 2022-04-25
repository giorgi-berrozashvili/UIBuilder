//
//  UIBuilder+ActivityIndicatorView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIActivityIndicatorView {
    @discardableResult
    open func hidesWhenStopped(_ hidesWhenStopped: Bool) -> UIBuilder<UIActivityIndicatorView> {
        self.view.hidesWhenStopped = hidesWhenStopped
        return self
    }
    
    @discardableResult
    open func style(_ style: UIActivityIndicatorView.Style) -> UIBuilder<UIActivityIndicatorView> {
        self.view.style = style
        return self
    }
    
    @discardableResult
    open func color(_ color: UIColor?) -> UIBuilder<UIActivityIndicatorView> {
        self.view.color = color
        return self
    }
}
