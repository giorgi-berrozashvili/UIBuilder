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
            leftTop: nil,
            leftBottom: nil,
            rightTop: nil,
            rightBottom: nil
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                leftTop: CGFloat,
                                leftBottom: CGFloat) -> UILayoutDouble {
        
        return alignHorizontally(
            left: left,
            spacing: spacing,
            right: right,
            leftTop: leftTop,
            leftBottom: leftBottom,
            rightTop: nil,
            rightBottom: nil
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                rightTop: CGFloat,
                                rightBottom: CGFloat) -> UILayoutDouble {
        
        return alignHorizontally(
            left: left,
            spacing: spacing,
            right: right,
            leftTop: nil,
            leftBottom: nil,
            rightTop: rightTop,
            rightBottom: rightBottom
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
                                leftTop: CGFloat?,
                                leftBottom: CGFloat?,
                                rightTop: CGFloat?,
                                rightBottom: CGFloat?) -> UILayoutDouble {
        
        subView1.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: left).isActive = true
        subView2.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -right).isActive = true
        
        leftTop.map { subView1.topAnchor.constraint(equalTo: superView.topAnchor, constant: $0).isActive = true }
        leftBottom.map { subView1.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -$0).isActive = true }
        rightTop.map { subView2.topAnchor.constraint(equalTo: superView.topAnchor, constant: $0).isActive = true }
        rightBottom.map { subView2.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -$0).isActive = true }
        
        subView2.leadingAnchor.constraint(equalTo: subView1.trailingAnchor, constant: spacing).isActive = true
        
        subView1.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        subView2.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
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
            topLeft: nil,
            bottomLeft: nil,
            topRight: nil,
            bottomRight: nil
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat,
                              topLeft: CGFloat,
                              topRight: CGFloat) -> UILayoutDouble {
        
        return alignVertically(
            top: top,
            spacing: spacing,
            bottom: bottom,
            topLeft: topLeft,
            bottomLeft: nil,
            topRight: topRight,
            bottomRight: nil
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat,
                              bottomLeft: CGFloat,
                              bottomRight: CGFloat) -> UILayoutDouble {
        
        return alignVertically(
            top: top,
            spacing: spacing,
            bottom: bottom,
            topLeft: nil,
            bottomLeft: bottomLeft,
            topRight: nil,
            bottomRight: bottomRight
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
                              topLeft: CGFloat?,
                              bottomLeft: CGFloat?,
                              topRight: CGFloat?,
                              bottomRight: CGFloat?) -> UILayoutDouble {
        
        subView1.topAnchor.constraint(equalTo: superView.topAnchor, constant: top).isActive = true
        subView2.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -bottom).isActive = true
        
        topLeft.map { subView1.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: $0).isActive = true }
        topRight.map { subView1.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -$0).isActive = true }
        bottomLeft.map { subView2.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: $0).isActive = true }
        bottomRight.map { subView2.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -$0).isActive = true }
        
        subView2.topAnchor.constraint(equalTo: subView1.bottomAnchor, constant: spacing).isActive = true
        
        subView1.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        subView2.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        
        return self
    }
}
