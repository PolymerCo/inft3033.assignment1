//
//  ConverterMechanicalHorsepower.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 1/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 Converter class for Watts to Mechanical Horsepower.
 */
class ConverterMechanicalHorsepower : Converter {
    var description: String = "Mechanical Horsepower"
    
    /**
     Converts a value from Watts into Mechanical Horsepower.
     
     - Parameter value: Value in Watts
     - Returns: The value in Mechanical Horsepower
     */
    func fromWatts(value: Double) -> Double {
        return value / 745.701033542
    }
    
    /**
     Converts a value in Mechanical Horsepower into Watts.
     
     - Parameter value: Value in Metric Horsepower
     - Returns: The value in Watts
     */
    func toWatts(value: Double) -> Double {
        return value * 745.701033542
    }
}
