//
//  Utility.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 7/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

import Foundation

/**
 Definitions for utility methods used by various classes
*/
class Utility {
    /**
     Converts a value into a string that it suited for the input components on the table.
     */
    public static func valueStringOf(number value: Double, withScientific: Bool = true) -> String {
        // check if = 0
        if (abs(value) < Double.ulpOfOne) {
            return ""
        }
        
        let fmt: NumberFormatter = NumberFormatter()
        
        fmt.minimumFractionDigits = 2
        
        // if large value, convert to scientific
        if value < 999_999_999 || !withScientific {
            fmt.maximumSignificantDigits = 9
            // return String(format: "%.9g", value)
        } else {
            fmt.numberStyle = .scientific
            fmt.positiveFormat = "0.#########E+0"
            fmt.exponentSymbol = "e"
            // return String(format: "%.9e", value)
        }
        
        return fmt.string(from: NSNumber(value: value)) ?? ""
    }
}
