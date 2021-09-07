//
//  ConverterElectricalHorsepower.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 1/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 Converter class for Watts to Electrical Horsepower.
 */
class ConverterElectricalHorsepower : Converter {
    var description: String = "Electrical Horsepower"
    
    /**
     Converts a value from Watts into Electrical Horsepower.
     
     - Parameter value: Value in Watts
     - Returns: The value in Electrical Horsepower
     */
    func fromWatts(value: Double) -> Double {
        return value / 746.0
    }
    
    /**
     Converts a value in Electrical Horsepower into Watts.
     
     - Parameter value: Value in Electrical Horsepower
     - Returns: The value in Watts
     */
    func toWatts(value: Double) -> Double {
        return value * 746.0
    }
}
