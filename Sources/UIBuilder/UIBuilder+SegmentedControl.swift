//
//  UIBuilder+SegmentedControl.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UISegmentedControl {
    @discardableResult
    public func image(_ image: UIImage?, forSegmentAt segment: Int) -> UIBuilder {
        self.view.setImage(image, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> UIBuilder {
        self.view.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    public func setContentPositionAdjustment(_ adjustment: UIOffset, forSegmentType type: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> UIBuilder {
        self.view.setContentPositionAdjustment(adjustment, forSegmentType: type, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    public func setDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics) -> UIBuilder {
        self.view.setDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState, barMetrics: barMetrics)
        return self
    }
    
    @discardableResult
    public func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> UIBuilder {
        self.view.setTitleTextAttributes(attributes, for: state)
        return self
    }
    
    @discardableResult
    public func title(_ title: String?, forSegmentAt segment: Int) -> UIBuilder {
        self.view.setTitle(title, forSegmentAt: segment)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func action(_ action: UIAction, forSegmentAt segment: Int) -> UIBuilder {
        self.view.setAction(action, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func selectedSegmentIndex(_ selectedSegmentIndex: Int) -> UIBuilder {
        self.view.selectedSegmentIndex = selectedSegmentIndex
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func selectedSegmentTintColor(_ selectedSegmentTintColor: UIColor?) -> UIBuilder {
        self.view.selectedSegmentTintColor = selectedSegmentTintColor
        return self
    }
    
    @discardableResult
    public func isMomentary(_ isMomentary: Bool) -> UIBuilder {
        self.view.isMomentary = isMomentary
        return self
    }
    
    @discardableResult
    public func setEnabled(_ enabled: Bool, forSegmentAt segment: Int) -> UIBuilder {
        self.view.setEnabled(enabled, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func setWidth(_ width: CGFloat, forSegmentAt segment: Int) -> UIBuilder {
        self.view.setWidth(width, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func setContentOffset(_ offset: CGSize, forSegmentAt segment: Int) -> UIBuilder {
        self.view.setContentOffset(offset, forSegmentAt: segment)
        return self
    }
    
    @discardableResult
    public func apportionsSegmentWidthsByContent(_ apportionsSegmentWidthsByContent: Bool) -> UIBuilder {
        self.view.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent
        return self
    }
}
