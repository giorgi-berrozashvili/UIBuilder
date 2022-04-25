//
//  UIBuilder+Control.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIControl {
    @discardableResult
    open func isEnabled(_ isEnabled: Bool) -> UIBuilder<UIControl> {
        self.view.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    open func isHighlighted(_ isHighlighted: Bool) -> UIBuilder<UIControl> {
        self.view.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    open func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> UIBuilder<UIControl> {
        self.view.contentVerticalAlignment = contentVerticalAlignment
        return self
    }
    
    @discardableResult
    open func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> UIBuilder<UIControl> {
        self.view.contentHorizontalAlignment = contentHorizontalAlignment
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func isContextMenuInteractionEnabled(_ isContextMenuInteractionEnabled: Bool) -> UIBuilder<UIControl> {
        self.view.isContextMenuInteractionEnabled = isContextMenuInteractionEnabled
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func showsMenuAsPrimaryAction(_ showsMenuAsPrimaryAction: Bool) -> UIBuilder<UIControl> {
        self.view.showsMenuAsPrimaryAction = showsMenuAsPrimaryAction
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func toolTip(_ toolTip: String?) -> UIBuilder<UIControl> {
        self.view.toolTip = toolTip
        return self
    }
    
    @discardableResult
    open func addingTarget(_ target: Any?, action: Selector, for event: UIControl.Event) -> UIBuilder<UIControl> {
        self.view.addTarget(target, action: action, for: event)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func addingAction(_ action: UIAction, for event: UIControl.Event) -> UIBuilder<UIControl> {
        self.view.addAction(action, for: event)
        return self
    }
}
