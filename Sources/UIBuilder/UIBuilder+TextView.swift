//
//  UIBuilder+TextView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UITextView {
    @discardableResult
    open func delegate(_ delegate: UITextViewDelegate?) -> UIBuilder {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    open func text(_ text: String) -> UIBuilder {
        self.view.text = text
        return self
    }
    
    @discardableResult
    open func attributedText(_ attributedText: NSAttributedString) -> UIBuilder {
        self.view.attributedText = attributedText
        return self
    }
    
    @discardableResult
    open func font(_ font: UIFont) -> UIBuilder {
        self.view.font = font
        return self
    }
    
    @discardableResult
    open func textColor(_ textColor: UIColor?) -> UIBuilder {
        self.view.textColor = textColor
        return self
    }
    
    @discardableResult
    open func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> UIBuilder {
        self.view.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    @discardableResult
    open func textAlignment(_ textAlignment: NSTextAlignment) -> UIBuilder {
        self.view.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    open func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> UIBuilder {
        self.view.typingAttributes = typingAttributes
        return self
    }
    
    @discardableResult
    open func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]) -> UIBuilder {
        self.view.linkTextAttributes = linkTextAttributes
        return self
    }
    
    @discardableResult
    open func textContainerInset(_ textContainerInset: UIEdgeInsets) -> UIBuilder {
        self.view.textContainerInset = textContainerInset
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    open func usesStandardTextScaling(_ usesStandardTextScaling: Bool) -> UIBuilder {
        self.view.usesStandardTextScaling = usesStandardTextScaling
        return self
    }
    
    @discardableResult
    open func isEditable(_ isEditable: Bool) -> UIBuilder {
        self.view.isEditable = isEditable
        return self
    }
    
    @discardableResult
    open func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> UIBuilder {
        self.view.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    open func selectedRange(_ selectedRange: NSRange) -> UIBuilder {
        self.view.selectedRange = selectedRange
        return self
    }
    
    @discardableResult
    open func isSelectable(_ isSelectable: Bool) -> UIBuilder {
        self.view.isSelectable = isSelectable
        return self
    }
    
    @discardableResult
    open func clearsOnInsertion(_ clearsOnInsertion: Bool) -> UIBuilder {
        self.view.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    @discardableResult
    open func inputView(_ inputView: UIView?) -> UIBuilder {
        self.view.inputView = inputView
        return self
    }
    
    @discardableResult
    open func inputAccessoryView(_ inputAccessoryView: UIView?) -> UIBuilder {
        self.view.inputAccessoryView = inputAccessoryView
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func interactionState(_ interactionState: Any) -> UIBuilder {
        self.view.interactionState = interactionState
        return self
    }
}
