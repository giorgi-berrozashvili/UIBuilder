//
//  UIBuilder.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

open class UIBuilder<ViewType> where ViewType: UIView {
    public private(set) var view: ViewType
    
    public init(_ view: ViewType) {
        self.view = view
    }
    
    public init(_ type: ViewType.Type) {
        self.view = type.init()
    }
    
    public func finally(_ action: (_ view: ViewType) -> Void) -> ViewType {
        action(view)
        return view
    }
}
