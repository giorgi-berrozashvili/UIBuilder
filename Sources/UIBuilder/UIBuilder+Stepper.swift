//
//  UIBuilder+Stepper.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIStepper {
    @discardableResult
    open func isContinuous(_ isContinuous: Bool) -> UIBuilder<UIStepper> {
        self.view.isContinuous = isContinuous
        return self
    }
    
    @discardableResult
    open func autorepeat(_ autorepeat: Bool) -> UIBuilder<UIStepper> {
        self.view.autorepeat = autorepeat
        return self
    }
    
    @discardableResult
    open func wraps(_ wraps: Bool) -> UIBuilder<UIStepper> {
        self.view.wraps = wraps
        return self
    }
    
    @discardableResult
    open func minimumValue(_ minimumValue: Double) -> UIBuilder<UIStepper> {
        self.view.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    open func maximumValue(_ maximumValue: Double) -> UIBuilder<UIStepper> {
        self.view.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    open func stepValue(_ stepValue: Double) -> UIBuilder<UIStepper> {
        self.view.stepValue = stepValue
        return self
    }
    
    @discardableResult
    open func value(_ value: Double) -> UIBuilder<UIStepper> {
        self.view.value = value
        return self
    }
    
    @discardableResult
    open func setBackgroundImage(_ image: UIImage?, for state: UIControl.State) -> UIBuilder<UIStepper> {
        self.view.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    open func setDecrementImage(_ image: UIImage?, for state: UIControl.State) -> UIBuilder<UIStepper> {
        self.view.setDecrementImage(image, for: state)
        return self
    }
    
    @discardableResult
    open func setIncrementImage(_ image: UIImage?, for state: UIControl.State) -> UIBuilder<UIStepper> {
        self.view.setIncrementImage(image, for: state)
        return self
    }
    
    @discardableResult
    open func setDividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> UIBuilder<UIStepper> {
        self.view.setDividerImage(image, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }
}
