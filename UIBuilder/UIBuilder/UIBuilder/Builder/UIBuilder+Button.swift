//
//  UIBuilder+Button.swift
//  AdvancedSwift
//
//  Created by Giorgi Berozashvili on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIButton {
    @discardableResult
    open func title(_ title: String?, for state: UIButton.State = .normal) -> UIBuilder<UIButton> {
        self.view.setTitle(title, for: state)
        return self
    }
    
    open func attributedTitle(_ attributedTitle: NSAttributedString?, for state: UIButton.State = .normal) -> UIBuilder<UIButton> {
        self.view.setAttributedTitle(attributedTitle, for: state)
        return self
    }
    
    open func titleColor(_ titleColor: UIColor?, for state: UIButton.State = .normal) -> UIBuilder<UIButton> {
        self.view.setTitleColor(titleColor, for: state)
        return self
    }
    
    open func titleShadowColor(_ titleShadowColor: UIColor?, for state: UIButton.State = .normal) -> UIBuilder<UIButton> {
        self.view.setTitleShadowColor(titleShadowColor, for: state)
        return self
    }
    
    open func image(_ image: UIImage?, for state: UIButton.State = .normal) -> UIBuilder<UIButton> {
        self.view.setImage(image, for: state)
        return self
    }
    
    open func backgroundImage(_ backgroundImage: UIImage?, for state: UIButton.State = .normal) -> UIBuilder<UIButton> {
        self.view.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    @available(iOS 15.0, *)
    open func configuration(_ configuration: UIButton.Configuration?) -> UIBuilder<UIButton> {
        self.view.configuration = configuration
        return self
    }
    
    @available(iOS 15.0, *)
    open func automaticallyUpdatesConfiguration(_ automaticallyUpdatesConfiguration: Bool) -> UIBuilder<UIButton> {
        self.view.automaticallyUpdatesConfiguration = automaticallyUpdatesConfiguration
        return self
    }
    
    @available(iOS 15.0, *)
    open func configurationUpdateHandler(_ configurationUpdateHandler: UIButton.ConfigurationUpdateHandler?) -> UIBuilder<UIButton> {
        self.view.configurationUpdateHandler = configurationUpdateHandler
        return self
    }
    
    @available(iOS 15.0, *)
    open func preferredBehavioralStyle(_ preferredBehavioralStyle: UIBehavioralStyle) -> UIBuilder<UIButton> {
        self.view.preferredBehavioralStyle = preferredBehavioralStyle
        return self
    }
    
    @available(iOS 15.0, *)
    open func changesSelectionAsPrimaryAction(_ changesSelectionAsPrimaryAction: Bool) -> UIBuilder<UIButton> {
        self.view.changesSelectionAsPrimaryAction = changesSelectionAsPrimaryAction
        return self
    }
    
    @available(iOS 14.0, *)
    open func role(_ role: UIButton.Role) -> UIBuilder<UIButton> {
        self.view.role = role
        return self
    }
    
    @available(iOS 14.0, *)
    open func menu(_ menu: UIMenu?) -> UIBuilder<UIButton> {
        self.view.menu = menu
        return self
    }
    
    @available(iOS 13.4, *)
    open func pointerStyleProvider(_ pointerStyleProvider: UIButton.PointerStyleProvider?) -> UIBuilder<UIButton> {
        self.view.pointerStyleProvider = pointerStyleProvider
        return self
    }
    
    @available(iOS 13.4, *)
    open func isPointerInteractionEnabled(_ isPointerInteractionEnabled: Bool) -> UIBuilder<UIButton> {
        self.view.isPointerInteractionEnabled = isPointerInteractionEnabled
        return self
    }
}
