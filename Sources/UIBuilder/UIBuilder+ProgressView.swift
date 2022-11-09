//
//  UIBuilder+ProgressView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIProgressView {
    @discardableResult
    public func progress(_ progress: Float) -> UIBuilder {
        self.view.progress = progress
        return self
    }
    
    @discardableResult
    public func observedProgress(_ observedProgress: Progress?) -> UIBuilder {
        self.view.observedProgress = observedProgress
        return self
    }
    
    @discardableResult
    public func progressViewStyle(_ progressViewStyle: UIProgressView.Style) -> UIBuilder {
        self.view.progressViewStyle = progressViewStyle
        return self
    }
    
    @discardableResult
    public func progressTintColor(_ progressTintColor: UIColor?) -> UIBuilder {
        self.view.progressTintColor = progressTintColor
        return self
    }
    
    @discardableResult
    public func progressImage(_ progressImage: UIImage?) -> UIBuilder {
        self.view.progressImage = progressImage
        return self
    }
    
    @discardableResult
    public func trackTintColor(_ trackTintColor: UIColor?) -> UIBuilder {
        self.view.trackTintColor = trackTintColor
        return self
    }
    
    @discardableResult
    public func trackImage(_ trackImage: UIImage?) -> UIBuilder {
        self.view.trackImage = trackImage
        return self
    }
}
