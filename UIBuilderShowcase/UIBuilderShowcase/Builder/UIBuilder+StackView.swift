//
//  UIBuilder+StackView.swift
//  AdvancedSwift
//
//  Created by Giorgi Berozashvili on 08.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIStackView {
    @discardableResult
    open func axis(_ axis: NSLayoutConstraint.Axis) -> UIBuilder<UIStackView> {
        self.view.axis = axis
        return self
    }
    
    open func alignment(_ alignment: UIStackView.Alignment) -> UIBuilder<UIStackView> {
        self.view.alignment = alignment
        return self
    }
    
    open func spacing(_ spacing: CGFloat) -> UIBuilder<UIStackView> {
        self.view.spacing = spacing
        return self
    }
    
    open func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> UIBuilder<UIStackView> {
        self.view.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        return self
    }
    
    open func distribution(_ distribution: UIStackView.Distribution) -> UIBuilder<UIStackView> {
        self.view.distribution = distribution
        return self
    }
    
    open func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> UIBuilder<UIStackView> {
        self.view.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        return self
    }
    
    @available(iOS 11.0, *)
    open func settingCustomSpace(_ space: CGFloat, after view: UIView) -> UIBuilder<UIStackView> {
        self.view.setCustomSpacing(space, after: view)
        return self
    }
}

