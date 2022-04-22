//
//  UIBuilder+SubView.swift
//  
//
//  Created by Giorgi Berozashvili on 21.04.22.
//

import UIKit

public typealias LayoutCompletion = ((_ superView: UIView, _ subViews: [UIView]) -> Void)

extension UIBuilder {
    @discardableResult
    open func subView<SubViewType>(_ subview: SubViewType,
                                   _ completion: ((UILayout<ViewType, SubViewType>) -> Void)? = nil) -> UIBuilder where SubViewType: UIView  {
        
        view.addSubview(subview)
        let layout = UILayout(superView: view, subView: subview)
        completion?(layout)
        return self
    }
    
    @discardableResult
    open func subView<SubView1, SubView2>(_ subview1: SubView1,
                                          _ subview2: SubView2,
                                          _ completion: ((UILayoutDouble<ViewType, SubView1, SubView2>) -> Void)? = nil) -> UIBuilder where SubView1: UIView, SubView2: UIView  {
        
        view.addSubview(subview1)
        view.addSubview(subview2)
        let layout = UILayoutDouble(superView: view, subView1: subview1, subView2: subview2)
        completion?(layout)
        return self
    }
    
    @discardableResult
    open func subView<SubViewType>(_ subview: SubViewType,
                                   _ completion: ((_ superView: ViewType, _ subView: SubViewType) -> Void)? = nil) -> UIBuilder where SubViewType: UIView {
        
        view.addSubview(subview)
        completion?(view, subview)
        return self
    }
    
    @discardableResult
    open func subView<SubViewType1, SubViewType2>(_ subview1: SubViewType1,
                                                  _ subview2: SubViewType2,
                                                  _ completion: ((_ superView: ViewType, _ subView1: SubViewType1, _ subview2: SubViewType2) -> Void)? = nil) -> UIBuilder where SubViewType1: UIView, SubViewType2: UIView {
        
        view.addSubview(subview1)
        view.addSubview(subview2)
        completion?(view, subview1, subview2)
        return self
    }
    
    @discardableResult
    open func subViews(_ subviews: [UIView],
                       _ completion: LayoutCompletion? = nil) -> UIBuilder {
        
        subviews.forEach { view.addSubview($0) }
        completion?(view, subviews)
        return self
    }
}
