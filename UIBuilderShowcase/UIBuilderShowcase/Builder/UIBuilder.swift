//
//  UIBuilder.swift
//  UIBuilderShowcase
//
//  Created by Giorgi Berozashvili on 16.04.22.
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
}
