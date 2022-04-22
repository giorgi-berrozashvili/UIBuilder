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
        
        return alignHorizontallyPrivate(
            left: left,
            spacing: spacing,
            right: right,
            firstTop: nil,
            firstBottom: nil,
            secondTop: nil,
            secondBottom: nil
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                firstTop: CGFloat,
                                firstBottom: CGFloat) -> UILayoutDouble {
        
        return alignHorizontallyPrivate(
            left: left,
            spacing: spacing,
            right: right,
            firstTop: firstTop,
            firstBottom: firstBottom,
            secondTop: nil,
            secondBottom: nil
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                secondTop: CGFloat,
                                secondBottom: CGFloat) -> UILayoutDouble {
        
        return alignHorizontallyPrivate(
            left: left,
            spacing: spacing,
            right: right,
            firstTop: nil,
            firstBottom: nil,
            secondTop: secondTop,
            secondBottom: secondBottom
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                top: CGFloat,
                                bottom: CGFloat) -> UILayoutDouble {
        
        return alignHorizontallyPrivate(
            left: left,
            spacing: spacing,
            right: right,
            firstTop: top,
            firstBottom: bottom,
            secondTop: top,
            secondBottom: bottom
        )
    }
    
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat,
                                firstTop: CGFloat,
                                firstBottom: CGFloat,
                                secondTop: CGFloat,
                                secondBottom: CGFloat) -> UILayoutDouble {
        
        return alignHorizontallyPrivate(
            left: left,
            spacing: spacing,
            right: right,
            firstTop: firstTop,
            firstBottom: firstBottom,
            secondTop: secondTop,
            secondBottom: secondBottom
        )
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
        
        return alignVerticallyPrivate(
            top: top,
            spacing: spacing,
            bottom: bottom,
            firstLeft: nil,
            firstRight: nil,
            secondLeft: nil,
            secondRight: nil
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat,
                              firstLeft: CGFloat,
                              firstRight: CGFloat) -> UILayoutDouble {
        
        return alignVerticallyPrivate(
            top: top,
            spacing: spacing,
            bottom: bottom,
            firstLeft: firstLeft,
            firstRight: firstRight,
            secondLeft: nil,
            secondRight: nil
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat,
                              secondLeft: CGFloat,
                              secondRight: CGFloat) -> UILayoutDouble {
        
        return alignVerticallyPrivate(
            top: top,
            spacing: spacing,
            bottom: bottom,
            firstLeft: nil,
            firstRight: nil,
            secondLeft: secondLeft,
            secondRight: secondRight
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat,
                              left: CGFloat,
                              right: CGFloat) -> UILayoutDouble {
        
        return alignVerticallyPrivate(
            top: top,
            spacing: spacing,
            bottom: bottom,
            firstLeft: left,
            firstRight: right,
            secondLeft: left,
            secondRight: right
        )
    }
    
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat,
                              firstLeft: CGFloat,
                              firstRight: CGFloat,
                              secondLeft: CGFloat,
                              secondRight: CGFloat) -> UILayoutDouble {
        
        return alignVerticallyPrivate(
            top: top,
            spacing: spacing,
            bottom: bottom,
            firstLeft: firstLeft,
            firstRight: firstRight,
            secondLeft: secondLeft,
            secondRight: secondRight
        )
    }
}

extension UILayoutDouble {
    private func alignHorizontallyPrivate(left: CGFloat,
                                          spacing: CGFloat,
                                          right: CGFloat,
                                          firstTop: CGFloat?,
                                          firstBottom: CGFloat?,
                                          secondTop: CGFloat?,
                                          secondBottom: CGFloat?) -> UILayoutDouble {
        
        subView1.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: left).isActive = true
        subView2.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -right).isActive = true
        
        firstTop.map { subView1.topAnchor.constraint(equalTo: superView.topAnchor, constant: $0).isActive = true }
        firstBottom.map { subView1.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -$0).isActive = true }
        secondTop.map { subView2.topAnchor.constraint(equalTo: superView.topAnchor, constant: $0).isActive = true }
        secondBottom.map { subView2.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -$0).isActive = true }
        
        subView2.leadingAnchor.constraint(equalTo: subView1.trailingAnchor, constant: spacing).isActive = true
        
        subView1.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        subView2.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        return self
    }
    
    private func alignVerticallyPrivate(top: CGFloat,
                                        spacing: CGFloat,
                                        bottom: CGFloat,
                                        firstLeft: CGFloat?,
                                        firstRight: CGFloat?,
                                        secondLeft: CGFloat?,
                                        secondRight: CGFloat?) -> UILayoutDouble {
        
        subView1.topAnchor.constraint(equalTo: superView.topAnchor, constant: top).isActive = true
        subView2.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -bottom).isActive = true
        
        firstLeft.map { subView1.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: $0).isActive = true }
        firstRight.map { subView1.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -$0).isActive = true }
        secondLeft.map { subView2.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: $0).isActive = true }
        secondRight.map { subView2.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -$0).isActive = true }
        
        subView2.topAnchor.constraint(equalTo: subView1.bottomAnchor, constant: spacing).isActive = true
        
        subView1.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        subView2.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        
        return self
    }
}
