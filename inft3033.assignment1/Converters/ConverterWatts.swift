//
//  ConverterWatts.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 1/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 Converter class for Watts to Watts.
 */
class ConverterWatts : Converter {
    var description: String = "Watts"
    
    /**
     Converts a value from Watts into Watts.
     
     - Parameter value: Value in Watts
     - Returns: The value in Watts
     */
    func fromWatts(value: Double) -> Double {
        return value
    }
    
    /**
     Converts a value in Watts into Watts.
     
     - Parameter value: Value in Metric Horsepower
     - Returns: The value in Watts
     */
    func toWatts(value: Double) -> Double {
        return value
    }
}
