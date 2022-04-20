//
//  UIBuilder.swift
//  UIBuilderShowcase
//
//  Created by Giorgi Berozashvili on 16.04.22.
//

import UIKit

open class UIBuilder<ViewType> where ViewType: UIView {
    public private(set) var view: ViewType
    
    public init(_ view: ViewType) {
        self.view = view
    }
    
    public init(_ type: ViewType.Type) {
        self.view = type.init()
    }
    
    open func subviews(_ subviews: [UIView]) -> UIBuilder {
        subviews.forEach { subview in view.addSubview(subview) }
        return self
    }
    
    @discardableResult
    open func subview(_ subview: UIView) -> UIBuilder {
        view.addSubview(subview)
        return self
    }
    
    @discardableResult
    open func subview(_ subview: UIView, inset: UIEdgeInsets) -> UIBuilder {
        view.addSubview(subview)
        
        return self
    }
    
    @discardableResult
    open func subview(_ subview: UIView, _ completion: () -> UILayout) -> UIBuilder {
        view.addSubview(subview)
        completion()
        return self
    }

    
    @discardableResult
    open func fillSuperView(_ spacing: CGFloat = .zero) -> UIBuilder {
        view.topAnchor.constraint(equalTo: view.superview!.topAnchor, constant: spacing).isActive = true
        view.leadingAnchor.constraint(equalTo: view.superview!.leadingAnchor, constant: spacing).isActive = true
        view.trailingAnchor.constraint(equalTo: view.superview!.trailingAnchor, constant: -spacing).isActive = true
        view.bottomAnchor.constraint(equalTo: view.superview!.bottomAnchor, constant: -spacing).isActive = true
        return self
    }
    
    @discardableResult
    open func topToSuperView(_ spacing: CGFloat = .zero) -> UIBuilder {
        view.topAnchor.constraint(equalTo: view.superview!.topAnchor, constant: spacing).isActive = true
        return self
    }
    
    @discardableResult
    open func leadingToSuperView(_ spacing: CGFloat = .zero) -> UIBuilder {
        view.leadingAnchor.constraint(equalTo: view.superview!.leadingAnchor, constant: spacing).isActive = true
        return self
    }
    
    @discardableResult
    open func trailingToSuperView(_ spacing: CGFloat = .zero) -> UIBuilder {
        view.trailingAnchor.constraint(equalTo: view.superview!.trailingAnchor, constant: -spacing).isActive = true
        return self
    }
    
    @discardableResult
    open func bottomToSuperView(_ spacing: CGFloat = .zero) -> UIBuilder {
        view.bottomAnchor.constraint(equalTo: view.superview!.bottomAnchor, constant: -spacing).isActive = true
        return self
    }
    
    @discardableResult
    open func height(_ height: CGFloat) -> UIBuilder {
        view.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    open func width(_ width: CGFloat) -> UIBuilder {
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
}
