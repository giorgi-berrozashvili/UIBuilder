//
//  UIBuilder+ProgressView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIProgressView {
    @discardableResult
    open func progress(_ progress: Float) -> UIBuilder {
        self.view.progress = progress
        return self
    }
    
    @discardableResult
    open func observedProgress(_ observedProgress: Progress?) -> UIBuilder {
        self.view.observedProgress = observedProgress
        return self
    }
    
    @discardableResult
    open func progressViewStyle(_ progressViewStyle: UIProgressView.Style) -> UIBuilder {
        self.view.progressViewStyle = progressViewStyle
        return self
    }
    
    @discardableResult
    open func progressTintColor(_ progressTintColor: UIColor?) -> UIBuilder {
        self.view.progressTintColor = progressTintColor
        return self
    }
    
    @discardableResult
    open func progressImage(_ progressImage: UIImage?) -> UIBuilder {
        self.view.progressImage = progressImage
        return self
    }
    
    @discardableResult
    open func trackTintColor(_ trackTintColor: UIColor?) -> UIBuilder {
        self.view.trackTintColor = trackTintColor
        return self
    }
    
    @discardableResult
    open func trackImage(_ trackImage: UIImage?) -> UIBuilder {
        self.view.trackImage = trackImage
        return self
    }
}
