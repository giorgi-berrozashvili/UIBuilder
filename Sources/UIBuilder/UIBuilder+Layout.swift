//
//  File.swift
//  
//
//  Created by Giorgi Berozashvili on 21.04.22.
//

import UIKit

public typealias LayoutCompletion = ((_ superView: UIView, _ subView: UIView) -> Void)

extension UIBuilder {
    @discardableResult
    open func subView(_ subview: UIView,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView(_ subview: UIView,
                      padding: CGFloat,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
        subview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        subview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
        subview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView(_ subview: UIView,
                      top: CGFloat,
                      bottom: CGFloat,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
        subview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom).isActive = true
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView(_ subview: UIView,
                      left: CGFloat,
                      right: CGFloat,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: left).isActive = true
        subview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -right).isActive = true
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView(_ subview: UIView,
                      top: CGFloat,
                      left: CGFloat,
                      right: CGFloat,
                      bottom: CGFloat,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
        subview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: left).isActive = true
        subview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -right).isActive = true
        subview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom).isActive = true
        completion?(view, subview)
        return self
    }
}
