//
//  UIBuilder+TextView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UITextView {
    @discardableResult
    public func delegate(_ delegate: UITextViewDelegate?) -> UIBuilder {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    public func text(_ text: String) -> UIBuilder {
        self.view.text = text
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString) -> UIBuilder {
        self.view.attributedText = attributedText
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> UIBuilder {
        self.view.font = font
        return self
    }
    
    @discardableResult
    public func textColor(_ textColor: UIColor?) -> UIBuilder {
        self.view.textColor = textColor
        return self
    }
    
    @discardableResult
    public func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> UIBuilder {
        self.view.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> UIBuilder {
        self.view.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> UIBuilder {
        self.view.typingAttributes = typingAttributes
        return self
    }
    
    @discardableResult
    public func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]) -> UIBuilder {
        self.view.linkTextAttributes = linkTextAttributes
        return self
    }
    
    @discardableResult
    public func textContainerInset(_ textContainerInset: UIEdgeInsets) -> UIBuilder {
        self.view.textContainerInset = textContainerInset
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    public func usesStandardTextScaling(_ usesStandardTextScaling: Bool) -> UIBuilder {
        self.view.usesStandardTextScaling = usesStandardTextScaling
        return self
    }
    
    @discardableResult
    public func isEditable(_ isEditable: Bool) -> UIBuilder {
        self.view.isEditable = isEditable
        return self
    }
    
    @discardableResult
    public func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> UIBuilder {
        self.view.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    public func selectedRange(_ selectedRange: NSRange) -> UIBuilder {
        self.view.selectedRange = selectedRange
        return self
    }
    
    @discardableResult
    public func isSelectable(_ isSelectable: Bool) -> UIBuilder {
        self.view.isSelectable = isSelectable
        return self
    }
    
    @discardableResult
    public func clearsOnInsertion(_ clearsOnInsertion: Bool) -> UIBuilder {
        self.view.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    @discardableResult
    public func inputView(_ inputView: UIView?) -> UIBuilder {
        self.view.inputView = inputView
        return self
    }
    
    @discardableResult
    public func inputAccessoryView(_ inputAccessoryView: UIView?) -> UIBuilder {
        self.view.inputAccessoryView = inputAccessoryView
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func interactionState(_ interactionState: Any) -> UIBuilder {
        self.view.interactionState = interactionState
        return self
    }
}
