//
//  ConverterCell.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 7/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

import UIKit

class ConverterCell: UITableViewCell {

    /**
     Table controller that this container cell is contained within.
    */
    @IBOutlet var controller: ConverterController?

    /**
     The label that is displayed within the cell to represent the unit description.
    */
    @IBOutlet var label: UILabel?

    /**
     The text field that is used to display and recieve the unit value.
    */
    @IBOutlet weak var field: UITextField? {
        didSet { field?.addDoneToolbar() }
    }
    
    /**
     Instance that this cell represents
    */
    var instance: ConverterInstance?
    
    /**
     Should run when a cell's text field has been selected (focus)
    */
    @IBAction func cellFieldSelected(_ sender: UITextField) {
        // convert cell value into non-exponent format
        let newValue = Utility.valueOfString(text: self.field?.text ?? "0.00")
        self.field?.text = Utility.stringOfValue(number: newValue, withScientific: false)
    }
    
    /**
     Should run when a cell's value has changed
    */
    @IBAction func cellValueChanged(_ sender: UITextField) {
        // try to convert to a number, if failed, reload data without setting value
        let newValue = Utility.valueOfString(text: sender.text ?? "0.00")
        
        // convert to watts then set value
        ConverterDataSource.GlobalValue = instance?.converter.toWatts(value: newValue) ?? 0
        
        self.controller?.cellChanged()
    }
}
