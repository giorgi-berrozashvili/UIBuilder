//
//  UIBuilder+ImageView.swift
//  AdvancedSwift
//
//  Created by Giorgi Berozashvili on 10.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIImageView {
    @discardableResult
    open func image(_ image: UIImage?) -> UIBuilder<UIImageView> {
        self.view.image = image
        return self
    }
    
    @discardableResult
    open func highlightedImage(_ highlightedImage: UIImage?) -> UIBuilder<UIImageView> {
        self.view.highlightedImage = highlightedImage
        return self
    }
    
    @discardableResult
    open func animationImages(_ animationImages: [UIImage]?) -> UIBuilder<UIImageView> {
        self.view.animationImages = animationImages
        return self
    }
    
    @discardableResult
    open func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> UIBuilder<UIImageView> {
        self.view.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    
    @discardableResult
    open func animationDuration(_ animationDuration: CGFloat) -> UIBuilder<UIImageView> {
        self.view.animationDuration = animationDuration
        return self
    }
    
    @discardableResult
    open func animationRepeatCount(_ animationRepeatCount: Int) -> UIBuilder<UIImageView> {
        self.view.animationRepeatCount = animationRepeatCount
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    open func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) -> UIBuilder<UIImageView> {
        self.view.preferredSymbolConfiguration = preferredSymbolConfiguration
        return self
    }
}

