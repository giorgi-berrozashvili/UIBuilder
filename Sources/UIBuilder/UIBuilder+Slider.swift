//
//  UIBuilder+Slider.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UISlider {
    @discardableResult
    open func value(_ value: Float) -> UIBuilder {
        self.view.value = value
        return self
    }
    
    @discardableResult
    open func minimumValue(_ minimumValue: Float) -> UIBuilder {
        self.view.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    open func maximumValue(_ maximumValue: Float) -> UIBuilder {
        self.view.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    open func isContinuous(_ isContinuous: Bool) -> UIBuilder {
        self.view.isContinuous = isContinuous
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func preferredBehavioralStyle(_ preferredBehavioralStyle: UIBehavioralStyle) -> UIBuilder {
        self.view.preferredBehavioralStyle = preferredBehavioralStyle
        return self
    }
    
    @discardableResult
    open func maximumValueImage(_ maximumValueImage: UIImage?) -> UIBuilder {
        self.view.maximumValueImage = maximumValueImage
        return self
    }
    
    @discardableResult
    open func minimumValueImage(_ minimumValueImage: UIImage?) -> UIBuilder {
        self.view.minimumValueImage = minimumValueImage
        return self
    }
    
    @discardableResult
    open func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> UIBuilder {
        self.view.maximumTrackTintColor = maximumTrackTintColor
        return self
    }
    
    @discardableResult
    open func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> UIBuilder {
        self.view.minimumTrackTintColor = minimumTrackTintColor
        return self
    }
    
    @discardableResult
    open func thumbTintColor(_ thumbTintColor: UIColor?) -> UIBuilder {
        self.view.thumbTintColor = thumbTintColor
        return self
    }
}
