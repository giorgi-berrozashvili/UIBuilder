//
//  UIBuilder+PickerView.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIPickerView {
    @discardableResult
    public func delegate(_ delegate: UIPickerViewDelegate?) -> UIBuilder {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    public func dataSource(_ dataSource: UIPickerViewDataSource?) -> UIBuilder {
        self.view.dataSource = dataSource
        return self
    }
}
