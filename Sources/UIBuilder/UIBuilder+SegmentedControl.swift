//
//  UIBuilder+SegmentedControl.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UISegmentedControl {
    @discardableResult
    open func image(_ image: UIImage?, forSegmentAt segment: Int) -> UIBuilder<UISegmentedControl> {
        self.view.setImage(image, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    open func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> UIBuilder<UISegmentedControl> {
        self.view.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    open func setContentPositionAdjustment(_ adjustment: UIOffset, forSegmentType type: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> UIBuilder<UISegmentedControl> {
        self.view.setContentPositionAdjustment(adjustment, forSegmentType: type, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    open func setDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics) -> UIBuilder<UISegmentedControl> {
        self.view.setDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    open func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> UIBuilder<UISegmentedControl> {
        self.view.setTitleTextAttributes(attributes, for: state)
        return self
    }
    
    @discardableResult
    open func title(_ title: String?, forSegmentAt segment: Int) -> UIBuilder<UISegmentedControl> {
        self.view.setTitle(title, forSegmentAt: segment)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func action(_ action: UIAction, forSegmentAt segment: Int) -> UIBuilder<UISegmentedControl> {
        self.view.setAction(action, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    open func selectedSegmentIndex(_ selectedSegmentIndex: Int) -> UIBuilder<UISegmentedControl> {
        self.view.selectedSegmentIndex = selectedSegmentIndex
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    open func selectedSegmentTintColor(_ selectedSegmentTintColor: UIColor?) -> UIBuilder<UISegmentedControl> {
        self.view.selectedSegmentTintColor = selectedSegmentTintColor
        return self
    }
    
    @discardableResult
    open func isMomentary(_ isMomentary: Bool) -> UIBuilder<UISegmentedControl> {
        self.view.isMomentary = isMomentary
        return self
    }
    
    @discardableResult
    open func setEnabled(_ enabled: Bool, forSegmentAt segment: Int) -> UIBuilder<UISegmentedControl> {
        self.view.setEnabled(enabled, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    open func setWidth(_ width: CGFloat, forSegmentAt segment: Int) -> UIBuilder<UISegmentedControl> {
        self.view.setWidth(width, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    open func setContentOffset(_ offset: CGSize, forSegmentAt segment: Int) -> UIBuilder<UISegmentedControl> {
        self.view.setContentOffset(offset, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    open func apportionsSegmentWidthsByContent(_ apportionsSegmentWidthsByContent: Bool) -> UIBuilder<UISegmentedControl> {
        self.view.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent
        return self
    }
}
