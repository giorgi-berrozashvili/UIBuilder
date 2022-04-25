//
//  UIBuilder+TextField.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType == UITextField {
    @discardableResult
    open func delegate(_ delegate: UITextFieldDelegate?) -> UIBuilder<UITextField> {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    open func text(_ text: String?) -> UIBuilder<UITextField> {
        self.view.text = text
        return self
    }
    
    @discardableResult
    open func attributedText(_ attributedText: NSAttributedString?) -> UIBuilder<UITextField> {
        self.view.attributedText = attributedText
        return self
    }
    
    @discardableResult
    open func placeholder(_ placeholder: String?) -> UIBuilder<UITextField> {
        self.view.placeholder = placeholder
        return self
    }
    
    @discardableResult
    open func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> UIBuilder<UITextField> {
        self.view.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    @discardableResult
    open func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> UIBuilder<UITextField> {
        self.view.defaultTextAttributes = defaultTextAttributes
        return self
    }
    
    @discardableResult
    open func font(_ font: UIFont?) -> UIBuilder<UITextField> {
        self.view.font = font
        return self
    }
    
    @discardableResult
    open func textColor(_ textColor: UIColor?) -> UIBuilder<UITextField> {
        self.view.textColor = textColor
        return self
    }
    
    @discardableResult
    open func textAlignment(_ textAlignment: NSTextAlignment) -> UIBuilder<UITextField> {
        self.view.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    open func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) -> UIBuilder<UITextField> {
        self.view.typingAttributes = typingAttributes
        return self
    }
    
    @discardableResult
    open func minimumFontSize(_ minimumFontSize: CGFloat) -> UIBuilder<UITextField> {
        self.view.minimumFontSize = minimumFontSize
        return self
    }
    
    @discardableResult
    open func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> UIBuilder<UITextField> {
        self.view.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    open func clearsOnInsertion(_ clearsOnInsertion: Bool) -> UIBuilder<UITextField> {
        self.view.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    @discardableResult
    open func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> UIBuilder<UITextField> {
        self.view.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }
    
    @discardableResult
    open func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> UIBuilder<UITextField> {
        self.view.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    open func borderStyle(_ borderStyle: UITextField.BorderStyle) -> UIBuilder<UITextField> {
        self.view.borderStyle = borderStyle
        return self
    }
    
    @discardableResult
    open func background(_ background: UIImage?) -> UIBuilder<UITextField> {
        self.view.background = background
        return self
    }
    
    @discardableResult
    open func disabledBackground(_ disabledBackground: UIImage?) -> UIBuilder<UITextField> {
        self.view.disabledBackground = disabledBackground
        return self
    }
    
    @discardableResult
    open func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> UIBuilder<UITextField> {
        self.view.clearButtonMode = clearButtonMode
        return self
    }
    
    @discardableResult
    open func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> UIBuilder<UITextField> {
        self.view.leftViewMode = leftViewMode
        return self
    }
    
    @discardableResult
    open func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> UIBuilder<UITextField> {
        self.view.rightViewMode = rightViewMode
        return self
    }
    
    @discardableResult
    open func leftView(_ leftView: UIView?) -> UIBuilder<UITextField> {
        self.view.leftView = leftView
        return self
    }
    
    @discardableResult
    open func rightView(_ rightView: UIView?) -> UIBuilder<UITextField> {
        self.view.rightView = rightView
        return self
    }
    
    @discardableResult
    open func inputView(_ inputView: UIView?) -> UIBuilder<UITextField> {
        self.view.inputView = inputView
        return self
    }
    
    @discardableResult
    open func inputAccessoryView(_ inputAccessoryView: UIView?) -> UIBuilder<UITextField> {
        self.view.inputAccessoryView = inputAccessoryView
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func interactionState(_ interactionState: Any) -> UIBuilder<UITextField> {
        self.view.interactionState = interactionState
        return self
    }
}
