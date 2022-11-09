//
//  UIBuilder+Button.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIButton {
    @discardableResult
    public func title(_ title: String?, for state: UIButton.State = .normal) -> UIBuilder {
        self.view.setTitle(title, for: state)
        return self
    }
    
    public func attributedTitle(_ attributedTitle: NSAttributedString?, for state: UIButton.State = .normal) -> UIBuilder {
        self.view.setAttributedTitle(attributedTitle, for: state)
        return self
    }
    
    public func titleColor(_ titleColor: UIColor?, for state: UIButton.State = .normal) -> UIBuilder {
        self.view.setTitleColor(titleColor, for: state)
        return self
    }
    
    public func titleShadowColor(_ titleShadowColor: UIColor?, for state: UIButton.State = .normal) -> UIBuilder {
        self.view.setTitleShadowColor(titleShadowColor, for: state)
        return self
    }
    
    public func image(_ image: UIImage?, for state: UIButton.State = .normal) -> UIBuilder {
        self.view.setImage(image, for: state)
        return self
    }
    
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIButton.State = .normal) -> UIBuilder {
        self.view.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    @available(iOS 15.0, *)
    public func configuration(_ configuration: UIButton.Configuration?) -> UIBuilder {
        self.view.configuration = configuration
        return self
    }
    
    @available(iOS 15.0, *)
    public func automaticallyUpdatesConfiguration(_ automaticallyUpdatesConfiguration: Bool) -> UIBuilder {
        self.view.automaticallyUpdatesConfiguration = automaticallyUpdatesConfiguration
        return self
    }
    
    @available(iOS 15.0, *)
    public func configurationUpdateHandler(_ configurationUpdateHandler: UIButton.ConfigurationUpdateHandler?) -> UIBuilder {
        self.view.configurationUpdateHandler = configurationUpdateHandler
        return self
    }
    
    @available(iOS 15.0, *)
    public func preferredBehavioralStyle(_ preferredBehavioralStyle: UIBehavioralStyle) -> UIBuilder {
        self.view.preferredBehavioralStyle = preferredBehavioralStyle
        return self
    }
    
    @available(iOS 15.0, *)
    public func changesSelectionAsPrimaryAction(_ changesSelectionAsPrimaryAction: Bool) -> UIBuilder {
        self.view.changesSelectionAsPrimaryAction = changesSelectionAsPrimaryAction
        return self
    }
    
    @available(iOS 14.0, *)
    public func role(_ role: UIButton.Role) -> UIBuilder {
        self.view.role = role
        return self
    }
    
    @available(iOS 14.0, *)
    public func menu(_ menu: UIMenu?) -> UIBuilder {
        self.view.menu = menu
        return self
    }
    
    @available(iOS 13.4, *)
    public func pointerStyleProvider(_ pointerStyleProvider: UIButton.PointerStyleProvider?) -> UIBuilder {
        self.view.pointerStyleProvider = pointerStyleProvider
        return self
    }
    
    @available(iOS 13.4, *)
    public func isPointerInteractionEnabled(_ isPointerInteractionEnabled: Bool) -> UIBuilder {
        self.view.isPointerInteractionEnabled = isPointerInteractionEnabled
        return self
    }
}
