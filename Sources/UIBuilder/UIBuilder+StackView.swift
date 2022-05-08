//
//  UIBuilder+StackView.swift
//  Created by Berrium on 08.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIStackView {
    @discardableResult
    open func axis(_ axis: NSLayoutConstraint.Axis) -> UIBuilder {
        self.view.axis = axis
        return self
    }
    
    open func alignment(_ alignment: UIStackView.Alignment) -> UIBuilder {
        self.view.alignment = alignment
        return self
    }
    
    open func spacing(_ spacing: CGFloat) -> UIBuilder {
        self.view.spacing = spacing
        return self
    }
    
    open func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> UIBuilder {
        self.view.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        return self
    }
    
    open func distribution(_ distribution: UIStackView.Distribution) -> UIBuilder {
        self.view.distribution = distribution
        return self
    }
    
    open func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> UIBuilder {
        self.view.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        return self
    }
    
    @available(iOS 11.0, *)
    open func settingCustomSpace(_ space: CGFloat, after view: UIView) -> UIBuilder {
        self.view.setCustomSpacing(space, after: view)
        return self
    }
    
    @discardableResult
    open func arrangedSubViews(_ subviews: UIView...) -> UIBuilder {
        subviews.forEach { view.addArrangedSubview($0) }
        return self
    }
}

