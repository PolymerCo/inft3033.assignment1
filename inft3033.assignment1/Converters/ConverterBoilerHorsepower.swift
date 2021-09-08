//
//  ConverterBoilerHorsepower.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 1/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 Converter class for Watts to Boiler Horsepower.
 */
class ConverterBoilerHorsepower : Converter {
    var description: String = "Boiler Horsepower"
    
    /**
     Converts a value from Watts into Boiler Horsepower.
     
     - Parameter value: Value in Watts
     - Returns: The value in Boiler Horsepower
     */
    func fromWatts(value: Double) -> Double {
        return value / 9809.49951933
    }
    
    /**
     Converts a value in BOiler Horsepower into Watts.
     
     - Parameter value: Value in Boiler Horsepower
     - Returns: The value in Watts
     */
    func toWatts(value: Double) -> Double {
        return value * 9809.49951933
    }
}
