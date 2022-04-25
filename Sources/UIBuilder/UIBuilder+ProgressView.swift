//
//  UIBuilder+ProgressView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIProgressView {
    @discardableResult
    open func progress(_ progress: Float) -> UIBuilder<UIProgressView> {
        self.view.progress = progress
        return self
    }
    
    @discardableResult
    open func observedProgress(_ observedProgress: Progress?) -> UIBuilder<UIProgressView> {
        self.view.observedProgress = observedProgress
        return self
    }
    
    @discardableResult
    open func progressViewStyle(_ progressViewStyle: UIProgressView.Style) -> UIBuilder<UIProgressView> {
        self.view.progressViewStyle = progressViewStyle
        return self
    }
    
    @discardableResult
    open func progressTintColor(_ progressTintColor: UIColor?) -> UIBuilder<UIProgressView> {
        self.view.progressTintColor = progressTintColor
        return self
    }
    
    @discardableResult
    open func progressImage(_ progressImage: UIImage?) -> UIBuilder<UIProgressView> {
        self.view.progressImage = progressImage
        return self
    }
    
    @discardableResult
    open func trackTintColor(_ trackTintColor: UIColor?) -> UIBuilder<UIProgressView> {
        self.view.trackTintColor = trackTintColor
        return self
    }
    
    @discardableResult
    open func trackImage(_ trackImage: UIImage?) -> UIBuilder<UIProgressView> {
        self.view.trackImage = trackImage
        return self
    }
}
