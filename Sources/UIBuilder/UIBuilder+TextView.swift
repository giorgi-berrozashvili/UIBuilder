//
//  UIBuilder+TextView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UITextView {
    @discardableResult
    open func delegate(_ delegate: UITextViewDelegate?) -> UIBuilder<UITextView> {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    open func text(_ text: String) -> UIBuilder<UITextView> {
        self.view.text = text
        return self
    }
    
    @discardableResult
    open func attributedText(_ attributedText: NSAttributedString) -> UIBuilder<UITextView> {
        self.view.attributedText = attributedText
        return self
    }
    
    @discardableResult
    open func font(_ font: UIFont) -> UIBuilder<UITextView> {
        self.view.font = font
        return self
    }
    
    @discardableResult
    open func textColor(_ textColor: UIColor?) -> UIBuilder<UITextView> {
        self.view.textColor = textColor
        return self
    }
    
    @discardableResult
    open func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> UIBuilder<UITextView> {
        self.view.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    @discardableResult
    open func textAlignment(_ textAlignment: NSTextAlignment) -> UIBuilder<UITextView> {
        self.view.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    open func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> UIBuilder<UITextView> {
        self.view.typingAttributes = typingAttributes
        return self
    }
    
    @discardableResult
    open func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]) -> UIBuilder<UITextView> {
        self.view.linkTextAttributes = linkTextAttributes
        return self
    }
    
    @discardableResult
    open func textContainerInset(_ textContainerInset: UIEdgeInsets) -> UIBuilder<UITextView> {
        self.view.textContainerInset = textContainerInset
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    open func usesStandardTextScaling(_ usesStandardTextScaling: Bool) -> UIBuilder<UITextView> {
        self.view.usesStandardTextScaling = usesStandardTextScaling
        return self
    }
    
    @discardableResult
    open func isEditable(_ isEditable: Bool) -> UIBuilder<UITextView> {
        self.view.isEditable = isEditable
        return self
    }
    
    @discardableResult
    open func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> UIBuilder<UITextView> {
        self.view.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    open func selectedRange(_ selectedRange: NSRange) -> UIBuilder<UITextView> {
        self.view.selectedRange = selectedRange
        return self
    }
    
    @discardableResult
    open func isSelectable(_ isSelectable: Bool) -> UIBuilder<UITextView> {
        self.view.isSelectable = isSelectable
        return self
    }
    
    @discardableResult
    open func clearsOnInsertion(_ clearsOnInsertion: Bool) -> UIBuilder<UITextView> {
        self.view.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    @discardableResult
    open func inputView(_ inputView: UIView?) -> UIBuilder<UITextView> {
        self.view.inputView = inputView
        return self
    }
    
    @discardableResult
    open func inputAccessoryView(_ inputAccessoryView: UIView?) -> UIBuilder<UITextView> {
        self.view.inputAccessoryView = inputAccessoryView
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func interactionState(_ interactionState: Any) -> UIBuilder<UITextView> {
        self.view.interactionState = interactionState
        return self
    }
}
