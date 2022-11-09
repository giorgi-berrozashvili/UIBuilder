//
//  UIBuilder+Layout.swift
//  
//  UIBuilder+Layout.swift
//  Created by Berrium on 21.04.22.
//

import UIKit

open class UILayout<SuperView, SubView> where SuperView: UIView, SubView: UIView {
    public var superView: SuperView
    public var subView: SubView
    
    public init(superView: SuperView, subView: SubView) {
        self.superView = superView
        self.subView = subView
    }
    
    @discardableResult
    public func top(_ padding: CGFloat = .zero) -> UILayout {
        subView.topAnchor.constraint(equalTo: superView.topAnchor, constant: padding).isActive = true
        return self
    }
    
    @discardableResult
    public func left(_ padding: CGFloat = .zero) -> UILayout {
        subView.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: padding).isActive = true
        return self
    }
    
    @discardableResult
    public func right(_ padding: CGFloat = .zero) -> UILayout {
        subView.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -padding).isActive = true
        return self
    }
    
    @discardableResult
    public func bottom(_ padding: CGFloat = .zero) -> UILayout {
        subView.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -padding).isActive = true
        return self
    }
    
    @discardableResult
    public func padding(_ padding: CGFloat) -> UILayout {
        return self.top(padding).left(padding).right(padding).bottom(padding)
    }
    
    @discardableResult
    public func center(_ axis: NSLayoutConstraint.Axis) -> UILayout {
        switch axis {
        case .vertical:
            subView.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        case .horizontal:
            subView.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        @unknown default:
            break
        }
        return self
    }
}
