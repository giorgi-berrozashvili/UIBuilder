//
//  UIBuilder+PickerView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIPickerView {
    @discardableResult
    open func delegate(_ delegate: UIPickerViewDelegate?) -> UIBuilder<UIPickerView> {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    open func dataSource(_ dataSource: UIPickerViewDataSource?) -> UIBuilder<UIPickerView> {
        self.view.dataSource = dataSource
        return self
    }
}
