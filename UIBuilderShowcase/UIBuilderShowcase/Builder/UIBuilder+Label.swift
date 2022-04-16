//
//  UIBuilder+Label.swift
//  AdvancedSwift
//
//  Created by Giorgi Berozashvili on 08.04.22.
//

import UIKit

extension UIBuilder where ViewType == UILabel {
    @discardableResult
    open func text(_ text: String?) -> UIBuilder<UILabel> {
        self.view.text = text
        return self
    }
    
    @discardableResult
    open func attributedText(_ attributedText: NSAttributedString?) -> UIBuilder<UILabel> {
        self.view.attributedText = attributedText
        return self
    }
    
    @discardableResult
    open func font(_ font: UIFont) -> UIBuilder<UILabel> {
        self.view.font = font
        return self
    }
    
    @discardableResult
    open func textColor(_ textColor: UIColor?) -> UIBuilder<UILabel> {
        self.view.textColor = textColor
        return self
    }
    
    @discardableResult
    open func textAlignment(_ textAlignment: NSTextAlignment) -> UIBuilder<UILabel> {
        self.view.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    open func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> UIBuilder<UILabel> {
        self.view.lineBreakMode = lineBreakMode
        return self
    }
    
    @discardableResult
    open func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> UIBuilder<UILabel> {
        self.view.lineBreakStrategy = lineBreakStrategy
        return self
    }
    
    @discardableResult
    open func isEnabled(_ isEnabled: Bool) -> UIBuilder<UILabel> {
        self.view.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    open func showsExpansionTextWhenTruncated(_ showsExpansionTextWhenTruncated: Bool) -> UIBuilder<UILabel> {
        self.view.showsExpansionTextWhenTruncated = showsExpansionTextWhenTruncated
        return self
    }
    
    @discardableResult
    open func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> UIBuilder<UILabel> {
        self.view.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    open func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> UIBuilder<UILabel> {
        self.view.baselineAdjustment = baselineAdjustment
        return self
    }
    
    @discardableResult
    open func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> UIBuilder<UILabel> {
        self.view.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    @discardableResult
    open func numberOfLines(_ numberOfLines: Int) -> UIBuilder<UILabel> {
        self.view.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    open func highlightedTextColor(_ highlightedTextColor: UIColor?) -> UIBuilder<UILabel> {
        self.view.highlightedTextColor = highlightedTextColor
        return self
    }
    
    @discardableResult
    open func isHighlighted(_ isHighlighted: Bool) -> UIBuilder<UILabel> {
        self.view.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    open func shadowColor(_ shadowColor: UIColor?) -> UIBuilder<UILabel> {
        self.view.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    open func shadowOffset(_ shadowOffset: CGSize) -> UIBuilder<UILabel> {
        self.view.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    open func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> UIBuilder<UILabel> {
        self.view.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
}

