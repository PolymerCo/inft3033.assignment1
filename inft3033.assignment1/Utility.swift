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
     
     - Parameter value: Value to convert into a string.
     - Parameter withScientific: If to allow for conversion to scientific notation with really large values. Default true.
     - Return: String representation of value.
    */
    public static func stringOfValue(number value: Double, withScientific: Bool = true) -> String {
        // check if = 0
        if abs(value) < Double.ulpOfOne {
            return ""
        }

        if abs(value) > Double.greatestFiniteMagnitude {
            return ""
        }
        
        let fmt: NumberFormatter = NumberFormatter()
        
        fmt.minimumFractionDigits = 2
        
        // if large value, convert to scientific.
        if value < 999_999_999_999 || !withScientific {
            fmt.maximumSignificantDigits = 9
        } else {
            fmt.numberStyle = .scientific
            fmt.positiveFormat = "0.#########E+0"
            fmt.exponentSymbol = "e"
        }
        
        return fmt.string(from: NSNumber(value: value)) ?? ""
    }

    /**
     Converts a string into a double value.
     
     - Parameter value: Value to convert into a double.
     - Return: Double representation of value.
     */
    public static func valueOfString(text value: String) -> Double {
        if let newValue = Double(value) {
            if newValue > Double.greatestFiniteMagnitude {
                return 0
            }

            return newValue
        }
        
        return 0
    }
}
