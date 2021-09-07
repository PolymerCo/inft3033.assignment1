//
//  UITextFieldExtension.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 8/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

import UIKit

/**
 Extensions for the UI text field in order to add 'Done' button on decimal input
 */
extension UITextField {
    func addDoneCancelToolbar(onDone: (target: Any, action: Selector)? = nil) {
        let onDone = onDone ?? (target: self, action: #selector(doneButtonTapped))
        
        let toolbar: UIToolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
            UIBarButtonItem(title: "Done", style: .done, target: onDone.target, action: onDone.action)
        ]
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
    @objc func doneButtonTapped() { self.resignFirstResponder() }
}
