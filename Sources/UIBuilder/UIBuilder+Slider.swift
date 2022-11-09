//
//  UIBuilder+Slider.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UISlider {
    @discardableResult
    public func value(_ value: Float) -> UIBuilder {
        self.view.value = value
        return self
    }
    
    @discardableResult
    public func minimumValue(_ minimumValue: Float) -> UIBuilder {
        self.view.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    public func maximumValue(_ maximumValue: Float) -> UIBuilder {
        self.view.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    public func isContinuous(_ isContinuous: Bool) -> UIBuilder {
        self.view.isContinuous = isContinuous
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func preferredBehavioralStyle(_ preferredBehavioralStyle: UIBehavioralStyle) -> UIBuilder {
        self.view.preferredBehavioralStyle = preferredBehavioralStyle
        return self
    }
    
    @discardableResult
    public func maximumValueImage(_ maximumValueImage: UIImage?) -> UIBuilder {
        self.view.maximumValueImage = maximumValueImage
        return self
    }
    
    @discardableResult
    public func minimumValueImage(_ minimumValueImage: UIImage?) -> UIBuilder {
        self.view.minimumValueImage = minimumValueImage
        return self
    }
    
    @discardableResult
    public func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> UIBuilder {
        self.view.maximumTrackTintColor = maximumTrackTintColor
        return self
    }
    
    @discardableResult
    public func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> UIBuilder {
        self.view.minimumTrackTintColor = minimumTrackTintColor
        return self
    }
    
    @discardableResult
    public func thumbTintColor(_ thumbTintColor: UIColor?) -> UIBuilder {
        self.view.thumbTintColor = thumbTintColor
        return self
    }
}
