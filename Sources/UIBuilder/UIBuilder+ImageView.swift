//
//  UIBuilder+ImageView.swift
//  Created by Berrium on 10.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIImageView {
    @discardableResult
    public func image(_ image: UIImage?) -> UIBuilder {
        self.view.image = image
        return self
    }
    
    @discardableResult
    public func highlightedImage(_ highlightedImage: UIImage?) -> UIBuilder {
        self.view.highlightedImage = highlightedImage
        return self
    }
    
    @discardableResult
    public func animationImages(_ animationImages: [UIImage]?) -> UIBuilder {
        self.view.animationImages = animationImages
        return self
    }
    
    @discardableResult
    public func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> UIBuilder {
        self.view.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    
    @discardableResult
    public func animationDuration(_ animationDuration: CGFloat) -> UIBuilder {
        self.view.animationDuration = animationDuration
        return self
    }
    
    @discardableResult
    public func animationRepeatCount(_ animationRepeatCount: Int) -> UIBuilder {
        self.view.animationRepeatCount = animationRepeatCount
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) -> UIBuilder {
        self.view.preferredSymbolConfiguration = preferredSymbolConfiguration
        return self
    }
}

