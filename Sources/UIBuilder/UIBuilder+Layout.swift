//
//  File.swift
//  
//
//  Created by Giorgi Berozashvili on 21.04.22.
//

import UIKit

public typealias LayoutCompletion = ((_ superView: UIView, _ subView: UIView) -> Void)
public typealias Layout2Completion = ((_ superView: UIView, _ subView1: UIView, _ subView2: UIView) -> Void)
public typealias Layout3Completion = ((_ superView: UIView, _ subView1: UIView, _ subView2: UIView, _ subView3: UIView) -> Void)
public typealias Layout4Completion = ((_ superView: UIView, _ subView1: UIView, _ subView2: UIView, _ subView3: UIView, _ subView4: UIView) -> Void)
public typealias LayoutMultiCompletion = ((_ superView: UIView, _ subViews: [UIView]) -> Void)

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
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView(_ subview: UIView,
                      bottom: CGFloat,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom).isActive = true
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView(_ subview: UIView,
                      left: CGFloat,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: left).isActive = true
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView(_ subview: UIView,
                      right: CGFloat,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        subview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -right).isActive = true
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
                      top: CGFloat? = nil,
                      left: CGFloat? = nil,
                      right: CGFloat? = nil,
                      bottom: CGFloat? = nil,
                      _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        view.addSubview(subview)
        
        top.map { subview.topAnchor.constraint(equalTo: view.topAnchor, constant: $0).isActive = true }
        left.map { subview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: $0).isActive = true }
        right.map { subview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -$0).isActive = true }
        bottom.map { subview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -$0).isActive = true }
        
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subViews(_ first: UIView,
                       _ second: UIView,
                       _ completion: Layout2Completion? = nil) -> UIBuilder {
        
        view.addSubview(first)
        view.addSubview(second)
        completion?(view, first, second)
        return self
    }
    
    @discardableResult
    open func subViews(_ first: UIView,
                       _ second: UIView,
                       _ third: UIView,
                       _ completion: Layout3Completion? = nil) -> UIBuilder {
        
        view.addSubview(first)
        view.addSubview(second)
        view.addSubview(third)
        completion?(view, first, second, third)
        return self
    }
    
    @discardableResult
    open func subViews(_ first: UIView,
                       _ second: UIView,
                       _ third: UIView,
                       _ fourth: UIView,
                       _ completion: Layout4Completion? = nil) -> UIBuilder {
        
        view.addSubview(first)
        view.addSubview(second)
        view.addSubview(third)
        view.addSubview(fourth)
        completion?(view, first, second, third, fourth)
        return self
    }
    
    @discardableResult
    open func subViews(_ subviews: [UIView],
                       _ completion: LayoutMultiCompletion? = nil) -> UIBuilder {
        
        subviews.forEach { view.addSubview($0) }
        completion?(view, subviews)
        return self
    }
}
