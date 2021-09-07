//
//  ConverterKilowatts.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 1/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 Converter class for Watts to Kilowatts.
 */
class ConverterKilowatts : Converter {
    var description: String = "Kilowatts"
    
    /**
     Converts a value from Watts into Kilowatts.
     
     - Parameter value: Value in Watts
     - Returns: The value in Kilowatts
     */
    func fromWatts(value: Double) -> Double {
        return value / 1000.0
    }
    
    /**
     Converts a value in Kilowatts into Watts.
     
     - Parameter value: Value in Metric Horsepower
     - Returns: The value in Watts
     */
    func toWatts(value: Double) -> Double {
        return value * 1000.0
    }
}
