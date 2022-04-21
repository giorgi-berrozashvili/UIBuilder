//
//  UIBuilder+PageControl.swift
//  UIBuilderShowcase
//
//  Created by Giorgi Berozashvili on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIPageControl {
    @discardableResult
    open func currentPage(_ currentPage: Int) -> UIBuilder<UIPageControl> {
        self.view.currentPage = currentPage
        return self
    }
    
    @discardableResult
    open func numberOfPages(_ numberOfPages: Int) -> UIBuilder<UIPageControl> {
        self.view.numberOfPages = numberOfPages
        return self
    }
    
    @discardableResult
    open func hidesForSinglePage(_ hidesForSinglePage: Bool) -> UIBuilder<UIPageControl> {
        self.view.hidesForSinglePage = hidesForSinglePage
        return self
    }
    
    @discardableResult
    open func pageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?) -> UIBuilder<UIPageControl> {
        self.view.pageIndicatorTintColor = pageIndicatorTintColor
        return self
    }
    
    @discardableResult
    open func currentPageIndicatorTintColor(_ currentPageIndicatorTintColor: UIColor?) -> UIBuilder<UIPageControl> {
        self.view.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func backgroundStyle(_ backgroundStyle: UIPageControl.BackgroundStyle) -> UIBuilder<UIPageControl> {
        self.view.backgroundStyle = backgroundStyle
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func preferredIndicatorImage(_ preferredIndicatorImage: UIImage?) -> UIBuilder<UIPageControl> {
        self.view.preferredIndicatorImage = preferredIndicatorImage
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func allowsContinuousInteraction(_ allowsContinuousInteraction: Bool) -> UIBuilder<UIPageControl> {
        self.view.allowsContinuousInteraction = allowsContinuousInteraction
        return self
    }
}
