//
//  UIBuilder+ActivityIndicatorView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIActivityIndicatorView {
    @discardableResult
    public func hidesWhenStopped(_ hidesWhenStopped: Bool) -> UIBuilder {
        self.view.hidesWhenStopped = hidesWhenStopped
        return self
    }
    
    @discardableResult
    public func style(_ style: UIActivityIndicatorView.Style) -> UIBuilder {
        self.view.style = style
        return self
    }
    
    @discardableResult
    public func color(_ color: UIColor?) -> UIBuilder {
        self.view.color = color
        return self
    }
}
