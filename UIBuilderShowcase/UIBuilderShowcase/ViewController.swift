//
//  ViewController.swift
//  UIBuilderShowcase
//
//  Created by Giorgi Berozashvili on 16.04.22.
//

import UIKit

class ViewController: UIViewController {
    
//    let custom = UIBuilder(UISwitch())
//        .translateAutoResizingMasksInfoConstraints(false)
//        .backgroundColor(.blue)
//        .isOn(true)
//        .onTintColor(.blue)
//        .offImage(UIImage())
//        .view
//
    
    let sw = UIBuilder(UISwitch.self)
        .isOn(true)
        .onTintColor(.brown)
        .translateAutoResizingMasksInfoConstraints(false)
        .view
    

    let sw2 = UIBuilder(UISwitch())
        .isOpaque(true)
        .backgroundColor(.red)
        .offImage(UIImage())
        .view
    
    let stack = UIBuilder(UIStackView.self)
        .axis(.horizontal)
        .distribution(.equalCentering)
        .alignment(.center)
        .view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

