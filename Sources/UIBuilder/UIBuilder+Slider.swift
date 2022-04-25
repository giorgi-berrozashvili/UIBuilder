//
//  UIBuilder+Slider.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UISlider {
    @discardableResult
    open func value(_ value: Float) -> UIBuilder<UISlider> {
        self.view.value = value
        return self
    }
    
    @discardableResult
    open func minimumValue(_ minimumValue: Float) -> UIBuilder<UISlider> {
        self.view.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    open func maximumValue(_ maximumValue: Float) -> UIBuilder<UISlider> {
        self.view.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    open func isContinuous(_ isContinuous: Bool) -> UIBuilder<UISlider> {
        self.view.isContinuous = isContinuous
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func preferredBehavioralStyle(_ preferredBehavioralStyle: UIBehavioralStyle) -> UIBuilder<UISlider> {
        self.view.preferredBehavioralStyle = preferredBehavioralStyle
        return self
    }
    
    @discardableResult
    open func maximumValueImage(_ maximumValueImage: UIImage?) -> UIBuilder<UISlider> {
        self.view.maximumValueImage = maximumValueImage
        return self
    }
    
    @discardableResult
    open func minimumValueImage(_ minimumValueImage: UIImage?) -> UIBuilder<UISlider> {
        self.view.minimumValueImage = minimumValueImage
        return self
    }
    
    @discardableResult
    open func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> UIBuilder<UISlider> {
        self.view.maximumTrackTintColor = maximumTrackTintColor
        return self
    }
    
    @discardableResult
    open func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> UIBuilder<UISlider> {
        self.view.minimumTrackTintColor = minimumTrackTintColor
        return self
    }
    
    @discardableResult
    open func thumbTintColor(_ thumbTintColor: UIColor?) -> UIBuilder<UISlider> {
        self.view.thumbTintColor = thumbTintColor
        return self
    }
}
