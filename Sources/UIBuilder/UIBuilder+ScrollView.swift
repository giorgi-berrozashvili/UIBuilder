//
//  UIBuilder+ScrollView.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIScrollView {
    @discardableResult
    public func delegate(_ delegate: UIScrollViewDelegate?) -> UIBuilder {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    public func contentSize(_ contentSize: CGSize) -> UIBuilder {
        self.view.contentSize = contentSize
        return self
    }
    
    @discardableResult
    public func contentOffset(_ contentOffset: CGPoint) -> UIBuilder {
        self.view.contentOffset = contentOffset
        return self
    }
    
    @discardableResult
    public func contentInset(_ contentInset: UIEdgeInsets) -> UIBuilder {
        self.view.contentInset = contentInset
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> UIBuilder {
        self.view.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    @discardableResult
    public func isScrollEnabled(_ isScrollEnabled: Bool) -> UIBuilder {
        self.view.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    public func isPagingEnabled(_ isPagingEnabled: Bool) -> UIBuilder {
        self.view.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    public func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> UIBuilder {
        self.view.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    @discardableResult
    public func scrollsToTop(_ scrollsToTop: Bool) -> UIBuilder {
        self.view.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    public func bounces(_ bounces: Bool) -> UIBuilder {
        self.view.bounces = bounces
        return self
    }
    
    @discardableResult
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> UIBuilder {
        self.view.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> UIBuilder {
        self.view.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    public func canCancelContentTouches(_ canCancelContentTouches: Bool) -> UIBuilder {
        self.view.canCancelContentTouches = canCancelContentTouches
        return self
    }
    
    @discardableResult
    public func delaysContentTouches(_ delaysContentTouches: Bool) -> UIBuilder {
        self.view.delaysContentTouches = delaysContentTouches
        return self
    }
    
    @discardableResult
    public func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> UIBuilder {
        self.view.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> UIBuilder {
        self.view.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func bouncesZoom(_ bouncesZoom: Bool) -> UIBuilder {
        self.view.bouncesZoom = bouncesZoom
        return self
    }
    
    @discardableResult
    public func zoomScale(_ zoomScale: CGFloat) -> UIBuilder {
        self.view.zoomScale = zoomScale
        return self
    }
    
    @discardableResult
    public func maximumZoomScale(_ maximumZoomScale: CGFloat) -> UIBuilder {
        self.view.maximumZoomScale = maximumZoomScale
        return self
    }
    
    @discardableResult
    public func minimumZoomScale(_ minimumZoomScale: CGFloat) -> UIBuilder {
        self.view.minimumZoomScale = minimumZoomScale
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    public func refreshControl(_ refreshControl: UIRefreshControl?) -> UIBuilder {
        self.view.refreshControl = refreshControl
        return self
    }
    
    @discardableResult
    public func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> UIBuilder {
        self.view.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    public func indexDisplayMode(_ indexDisplayMode: UIScrollView.IndexDisplayMode) -> UIBuilder {
        self.view.indexDisplayMode = indexDisplayMode
        return self
    }
    
    @discardableResult
    public func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> UIBuilder {
        self.view.indicatorStyle = indicatorStyle
        return self
    }
}
