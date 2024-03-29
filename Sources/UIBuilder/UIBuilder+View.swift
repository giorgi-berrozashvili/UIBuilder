//
//  UIBuilder+View.swift
//  Created by Berrium on 08.04.22.
//

import UIKit

extension UIBuilder {
    
    @discardableResult
    public func frame(_ frame: CGRect) -> UIBuilder {
        self.view.frame = frame
        return self
    }
    
    @discardableResult
    public func bounds(_ bounds: CGRect) -> UIBuilder {
        self.view.bounds = bounds
        return self
    }
    
    @discardableResult
    public func center(_ center: CGPoint) -> UIBuilder {
        self.view.center = center
        return self
    }
    
    @discardableResult
    public func transform(_ transform: CGAffineTransform) -> UIBuilder {
        self.view.transform = transform
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func transform3D(_ transform3D: CATransform3D) -> UIBuilder {
        self.view.transform3D = transform3D
        return self
    }
    
    @discardableResult
    public func alpha(_ alpha: CGFloat) -> UIBuilder {
        self.view.alpha = alpha
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> UIBuilder {
        self.view.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor?) -> UIBuilder {
        self.view.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor?) -> UIBuilder {
        self.view.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> UIBuilder {
        self.view.tintAdjustmentMode = tintAdjustmentMode
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> UIBuilder {
        self.view.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> UIBuilder {
        self.view.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        return self
    }
    
    @discardableResult
    public func mask(_ mask: UIView?) -> UIBuilder {
        self.view.mask = mask
        return self
    }
    
    @discardableResult
    public func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> UIBuilder {
        self.view.isMultipleTouchEnabled = isMultipleTouchEnabled
        return self
    }
    
    @discardableResult
    public func isExclusiveTouch(_ isExclusiveTouch: Bool) -> UIBuilder {
        self.view.isExclusiveTouch = isExclusiveTouch
        return self
    }
    
    @discardableResult
    public func isHidden(_ isHidden: Bool) -> UIBuilder {
        self.view.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func isOpaque(_ isOpaque: Bool) -> UIBuilder {
        self.view.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> UIBuilder {
        self.view.contentMode = contentMode
        return self
    }
    
    @discardableResult
    public func layoutMargins(_ layoutMargins: UIEdgeInsets) -> UIBuilder {
        self.view.layoutMargins = layoutMargins
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func directionalLayoutMargins(_ directionalLayoutMargins: NSDirectionalEdgeInsets) -> UIBuilder {
        self.view.directionalLayoutMargins = directionalLayoutMargins
        return self
    }
    
    @discardableResult
    public func preservesSuperviewLayoutMargins(_ preservesSuperviewLayoutMargins: Bool) -> UIBuilder {
        self.view.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func insetsLayoutMarginsFromSafeArea(_ insetsLayoutMarginsFromSafeArea: Bool) -> UIBuilder {
        self.view.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea
        return self
    }
    
    @discardableResult
    public func autoresizesSubviews(_ autoresizesSubviews: Bool) -> UIBuilder {
        self.view.autoresizesSubviews = autoresizesSubviews
        return self
    }
    
    @discardableResult
    public func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> UIBuilder {
        self.view.autoresizingMask = autoresizingMask
        return self
    }
    
    @discardableResult
    public func translatesAutoresizingMaskIntoConstraints(_ translatesAutoresizingMaskIntoConstraints: Bool) -> UIBuilder {
        self.view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return self
    }
    
    @discardableResult
    public func height(_ height: CGFloat) -> UIBuilder {
        view.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    public func width(_ width: CGFloat) -> UIBuilder {
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    public func verticalHuggingPriority(_ priority: Float) -> UIBuilder {
        view.setContentHuggingPriority(UILayoutPriority(rawValue: priority), for: .vertical)
        return self
    }
    
    @discardableResult
    public func horizontalHuggingPriority(_ priority: Float) -> UIBuilder {
        view.setContentHuggingPriority(UILayoutPriority(rawValue: priority), for: .horizontal)
        return self
    }
    
    @discardableResult
    public func verticalResistancePriority(_ priority: Float) -> UIBuilder {
        view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: priority), for: .vertical)
        return self
    }
    
    @discardableResult
    public func horizontalResistancePriority(_ priority: Float) -> UIBuilder {
        view.setContentCompressionResistancePriority(UILayoutPriority(priority), for: .horizontal)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func overrideUserInterfaceStyle(_ overrideUserInterfaceStyle: UIUserInterfaceStyle) -> UIBuilder {
        self.view.overrideUserInterfaceStyle = overrideUserInterfaceStyle
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    public func semanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute) -> UIBuilder {
        self.view.semanticContentAttribute = semanticContentAttribute
        return self
    }
    
    @discardableResult
    public func contentScaleFactor(_ contentScaleFactor: CGFloat) -> UIBuilder {
        self.view.contentScaleFactor = contentScaleFactor
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func focusGroupIdentifier(_ focusGroupIdentifier: String?) -> UIBuilder {
        self.view.focusGroupIdentifier = focusGroupIdentifier
        return self
    }
    
    @discardableResult
    public func motionEffects(_ motionEffects: [UIMotionEffect]) -> UIBuilder {
        self.view.motionEffects = motionEffects
        return self
    }
    
    @discardableResult
    public func restorationIdentifier(_ restorationIdentifier: String?) -> UIBuilder {
        self.view.restorationIdentifier = restorationIdentifier
        return self
    }
    
    @discardableResult
    public func tag(_ tag: Int) -> UIBuilder {
        self.view.tag = tag
        return self
    }
    
    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> UIBuilder {
        self.view.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func accessibilityIgnoresInvertColors(_ accessibilityIgnoresInvertColors: Bool) -> UIBuilder {
        self.view.accessibilityIgnoresInvertColors = accessibilityIgnoresInvertColors
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func largeContentImage(_ largeContentImage: UIImage?) -> UIBuilder {
        self.view.largeContentImage = largeContentImage
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func largeContentTitle(_ largeContentTitle: String?) -> UIBuilder {
        self.view.largeContentTitle = largeContentTitle
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func largeContentImageInsets(_ largeContentImageInsets: UIEdgeInsets) -> UIBuilder {
        self.view.largeContentImageInsets = largeContentImageInsets
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func scalesLargeContentImage(_ scalesLargeContentImage: Bool) -> UIBuilder {
        self.view.scalesLargeContentImage = scalesLargeContentImage
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func showsLargeContentViewer(_ showsLargeContentViewer: Bool) -> UIBuilder {
        self.view.showsLargeContentViewer = showsLargeContentViewer
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func maximumContentSizeCategory(_ maximumContentSizeCategory: UIContentSizeCategory) -> UIBuilder {
        self.view.maximumContentSizeCategory = maximumContentSizeCategory
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func minimumContentSizeCategory(_ minimumContentSizeCategory: UIContentSizeCategory) -> UIBuilder {
        self.view.minimumContentSizeCategory = minimumContentSizeCategory
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func focusEffect(_ focusEffect: UIFocusEffect?) -> UIBuilder {
        self.view.focusEffect = focusEffect
        return self
    }
    
    
    @available(iOS 15.0, *)
    @discardableResult
    public func focusGroupPriority(_ focusGroupPriority: UIFocusGroupPriority) -> UIBuilder {
        self.view.focusGroupPriority = focusGroupPriority
        return self
    }
}
