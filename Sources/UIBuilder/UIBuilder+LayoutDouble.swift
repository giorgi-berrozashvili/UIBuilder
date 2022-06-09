//
//  UIBuilder+LayoutDouble.swift
//  Created by Berrium on 22.04.22.
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
    
    /// Aligns subViews horizontally and completely fills the superView
    @discardableResult
    open func alignHorizontally(spacing: CGFloat = .zero) -> UILayoutDouble {
        return alignHorizontally(
            left: .zero,
            spacing: spacing,
            right: .zero
        )
    }
    
    /// Aligns subViews horizontally with the given horizontal margins
    @discardableResult
    open func alignHorizontally(left: CGFloat,
                                spacing: CGFloat,
                                right: CGFloat) -> UILayoutDouble {
        return alignHorizontallyPrivate(
            left: left,
            spacing: spacing,
            right: right,
            firstTop: .zero,
            firstBottom: .zero,
            secondTop: .zero,
            secondBottom: .zero
        )
    }
    
    /// Creates a custom horizontal alignment, where the first inserted view is stretched with given vertical margins and the second is centered, i.e. superView gets its contentSize from the first view
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
    
    /// Creates a custom horizontal alignment, where the first inserted view is centered and the second is stretched to the superView, i.e. superView gets its contentSize from the second view
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
    
    /// Aligns the given subViews horizontally, fills the superView with the specified edge insets
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
    
    /// Fills the superView with the given subViews with specified edge insets for each subViews
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
    
    /// Aligns subViews vertically and completely fills the superView
    @discardableResult
    open func alignVertically(spacing: CGFloat = .zero) -> UILayoutDouble {
        
        return alignVertically(
            top: .zero,
            spacing: spacing,
            bottom: .zero
        )
    }
    
    /// Aligns subViews vertically with the given vertical margins
    @discardableResult
    open func alignVertically(top: CGFloat,
                              spacing: CGFloat,
                              bottom: CGFloat) -> UILayoutDouble {
        
        return alignVerticallyPrivate(
            top: top,
            spacing: spacing,
            bottom: bottom,
            firstLeft: .zero,
            firstRight: .zero,
            secondLeft: .zero,
            secondRight: .zero
        )
    }
    
    /// Creates a custom vertical alignment, where the first inserted view is stretched with given horizontal margins and the second is centered, i.e. superView gets its contentSize from the first view
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
    
    /// Creates a custom vertical alignment, where the first inserted view is centered and the second is stretched with the given margins to the superView, i.e. superView gets its contentSize from the second view
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
    
    /// Aligns the given subViews vertically, fills the superView with the specified edge insets
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
    
    /// Aligns the given subViews vertically, fills the superView with the specified edge insets for each subViews
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
    
    /// Creates an independent alignment where the sibling subViews are not related to each other
    @discardableResult
    open func alignZStack(firstTop: CGFloat?,
                          firstLeft: CGFloat?,
                          firstRight: CGFloat?,
                          firstBottom: CGFloat?,
                          secondTop: CGFloat?,
                          secondLeft: CGFloat?,
                          secondRight: CGFloat?,
                          secondBottom: CGFloat?) -> UILayoutDouble {
        firstTop.map { subView1.topAnchor.constraint(equalTo: superView.topAnchor, constant: $0).isActive = true }
        firstLeft.map { subView1.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: $0).isActive = true }
        firstRight.map { subView1.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -$0).isActive = true }
        firstBottom.map { subView1.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -$0).isActive = true }
        
        secondTop.map { subView2.topAnchor.constraint(equalTo: superView.topAnchor, constant: $0).isActive = true }
        secondLeft.map { subView2.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: $0).isActive = true }
        secondRight.map { subView2.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -$0).isActive = true }
        secondBottom.map { subView2.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -$0).isActive = true }
        return self
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
        
        if firstTop == nil && firstBottom == nil {
            subView1.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        }
        if secondTop == nil && secondBottom == nil {
            subView2.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
        }
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
        
        if firstLeft == nil && firstRight == nil {
            subView1.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        }
        if secondLeft == nil && secondRight == nil {
            subView2.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        }
        return self
    }
}
