//
//  UIBuilder+Control.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIControl {
    @discardableResult
    open func isEnabled(_ isEnabled: Bool) -> UIBuilder {
        self.view.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    open func isHighlighted(_ isHighlighted: Bool) -> UIBuilder {
        self.view.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    open func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> UIBuilder {
        self.view.contentVerticalAlignment = contentVerticalAlignment
        return self
    }
    
    @discardableResult
    open func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> UIBuilder {
        self.view.contentHorizontalAlignment = contentHorizontalAlignment
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func isContextMenuInteractionEnabled(_ isContextMenuInteractionEnabled: Bool) -> UIBuilder {
        self.view.isContextMenuInteractionEnabled = isContextMenuInteractionEnabled
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func showsMenuAsPrimaryAction(_ showsMenuAsPrimaryAction: Bool) -> UIBuilder {
        self.view.showsMenuAsPrimaryAction = showsMenuAsPrimaryAction
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func toolTip(_ toolTip: String?) -> UIBuilder {
        self.view.toolTip = toolTip
        return self
    }
    
    @discardableResult
    open func addingTarget(_ target: Any?, action: Selector, for event: UIControl.Event) -> UIBuilder {
        self.view.addTarget(target, action: action, for: event)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func addingAction(_ action: UIAction, for event: UIControl.Event) -> UIBuilder {
        self.view.addAction(action, for: event)
        return self
    }
}
