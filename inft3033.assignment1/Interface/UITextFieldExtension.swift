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
    /**
     Adds a toolbar that displays the word 'done'. Will call the action callback when clicked.
    */
    func addDoneToolbar(onDone: (target: Any, action: Selector)? = nil) {
        // Set default action if no onDone set
        let onDone = onDone ?? (target: self, action: #selector(doneButtonTapped))
        
        // Create toolbar and define layout
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
            UIBarButtonItem(title: "Done", style: .done, target: onDone.target, action: onDone.action)
        ]
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
    // Default action. Will blur the text field.
    @objc func doneButtonTapped() { self.resignFirstResponder() }
}
