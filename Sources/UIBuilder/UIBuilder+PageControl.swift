//
//  UIBuilder+PageControl.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIPageControl {
    @discardableResult
    open func currentPage(_ currentPage: Int) -> UIBuilder {
        self.view.currentPage = currentPage
        return self
    }
    
    @discardableResult
    open func numberOfPages(_ numberOfPages: Int) -> UIBuilder {
        self.view.numberOfPages = numberOfPages
        return self
    }
    
    @discardableResult
    open func hidesForSinglePage(_ hidesForSinglePage: Bool) -> UIBuilder {
        self.view.hidesForSinglePage = hidesForSinglePage
        return self
    }
    
    @discardableResult
    open func pageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?) -> UIBuilder {
        self.view.pageIndicatorTintColor = pageIndicatorTintColor
        return self
    }
    
    @discardableResult
    open func currentPageIndicatorTintColor(_ currentPageIndicatorTintColor: UIColor?) -> UIBuilder {
        self.view.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func backgroundStyle(_ backgroundStyle: UIPageControl.BackgroundStyle) -> UIBuilder {
        self.view.backgroundStyle = backgroundStyle
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func preferredIndicatorImage(_ preferredIndicatorImage: UIImage?) -> UIBuilder {
        self.view.preferredIndicatorImage = preferredIndicatorImage
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func allowsContinuousInteraction(_ allowsContinuousInteraction: Bool) -> UIBuilder {
        self.view.allowsContinuousInteraction = allowsContinuousInteraction
        return self
    }
}
