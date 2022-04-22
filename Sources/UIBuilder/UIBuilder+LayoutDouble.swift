//
//  UIBuilder+LayoutDouble.swift
//  
//
//  Created by Giorgi Berozashvili on 22.04.22.
//

import UIKit

open class UILayoutDouble<SuperView, SubView1, SubView2> where SuperView: UIView, SubView1: UIView, SubView2: UIView {
    public var superView: SuperView
    public var subView1: SubView1
    public var subView2: SubView2
    
    public init(superView: SuperView, subView1: SubView1, subView2: SubView2) {
        self.superView = superView
        self.subView1 = subView1
        self.subView2 = subView2
    }
    
    @discardableResult
    open func alignHorizontally(spacing: CGFloat = .zero) -> UILayoutDouble {
        
        return alignHorizontally(
            left: .zero,
            spacing: spacing,
            right: .zero
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat) -> UILayoutDouble {
        
        return alignHorizontally(
            left: left,
            spacing: spacing,
            right: right,
            leftTop: .zero,
            leftBottom: .zero,
            rightTop: .zero,
            rightBottom: .zero
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                top: CGFloat,
                                bottom: CGFloat) -> UILayoutDouble {
        
        return alignHorizontally(
            left: left,
            spacing: spacing,
            right: right,
            leftTop: top,
            leftBottom: bottom,
            rightTop: top,
            rightBottom: bottom
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                leftTop: CGFloat,
                                leftBottom: CGFloat,
                                rightTop: CGFloat,
                                rightBottom: CGFloat) -> UILayoutDouble {
        subView1.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: left).isActive = true
        subView1.topAnchor.constraint(equalTo: superView.topAnchor, constant: leftTop).isActive = true
        subView1.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -leftBottom).isActive = true
        
        subView2.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -right).isActive = true
        subView2.topAnchor.constraint(equalTo: superView.topAnchor, constant: rightTop).isActive = true
        subView2.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -rightBottom).isActive = true
        
        subView2.leadingAnchor.constraint(equalTo: subView1.trailingAnchor, constant: spacing).isActive = true
        
        return self
    }
    
    @discardableResult
    open func alignVertically(spacing: CGFloat = .zero) -> UILayoutDouble {
        
        return alignVertically(
            top: .zero,
            spacing: spacing,
            bottom: .zero
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat) -> UILayoutDouble {
        
        return alignVertically(
            top: top,
            spacing: spacing,
            bottom: bottom,
            left: .zero,
            right: .zero
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                                spacing: CGFloat,
                                bottom: CGFloat,
                                left: CGFloat,
                                right: CGFloat) -> UILayoutDouble {
        
        return alignVertically(
            top: top,
            spacing: spacing,
            bottom: bottom,
            topLeft: left,
            bottomLeft: left,
            topRight: right,
            bottomRight: right
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat,
                              topLeft: CGFloat,
                              bottomLeft: CGFloat,
                              topRight: CGFloat,
                              bottomRight: CGFloat) -> UILayoutDouble {
        
        subView1.topAnchor.constraint(equalTo: superView.topAnchor, constant: top).isActive = true
        subView1.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: topLeft).isActive = true
        subView1.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -topRight).isActive = true
        
        subView2.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: bottomLeft).isActive = true
        subView2.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -bottomRight).isActive = true
        subView2.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -bottom).isActive = true
        
        subView2.topAnchor.constraint(equalTo: subView1.bottomAnchor, constant: spacing).isActive = true
        
        return self
    }
}
