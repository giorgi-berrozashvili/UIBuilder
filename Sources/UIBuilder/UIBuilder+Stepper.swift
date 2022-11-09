//
//  UIBuilder+Stepper.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIStepper {
    @discardableResult
    public func isContinuous(_ isContinuous: Bool) -> UIBuilder {
        self.view.isContinuous = isContinuous
        return self
    }
    
    @discardableResult
    public func autorepeat(_ autorepeat: Bool) -> UIBuilder {
        self.view.autorepeat = autorepeat
        return self
    }
    
    @discardableResult
    public func wraps(_ wraps: Bool) -> UIBuilder {
        self.view.wraps = wraps
        return self
    }
    
    @discardableResult
    public func minimumValue(_ minimumValue: Double) -> UIBuilder {
        self.view.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    public func maximumValue(_ maximumValue: Double) -> UIBuilder {
        self.view.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    public func stepValue(_ stepValue: Double) -> UIBuilder {
        self.view.stepValue = stepValue
        return self
    }
    
    @discardableResult
    public func value(_ value: Double) -> UIBuilder {
        self.view.value = value
        return self
    }
    
    @discardableResult
    public func setBackgroundImage(_ image: UIImage?, for state: UIControl.State) -> UIBuilder {
        self.view.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func setDecrementImage(_ image: UIImage?, for state: UIControl.State) -> UIBuilder {
        self.view.setDecrementImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func setIncrementImage(_ image: UIImage?, for state: UIControl.State) -> UIBuilder {
        self.view.setIncrementImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func setDividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> UIBuilder {
        self.view.setDividerImage(image, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }
}
