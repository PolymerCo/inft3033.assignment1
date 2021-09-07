//
//  ConverterMetricHorsepower.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 1/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 Converter class for Watts to Metric Horsepower.
 */
class ConverterMetricHorsepower : Converter {
    var description: String = "Metric Horsepower"
    
    /**
     Converts a value from Watts into Metric Horsepower.
     
     - Parameter value: Value in Watts
     - Returns: The value in Metric Horsepower
     */
    func fromWatts(value: Double) -> Double {
        return value / 735.49875
    }
    
    /**
     Converts a value in Metric Horsepower into Watts.
 
     - Parameter value: Value in Metric Horsepower
     - Returns: The value in Watts
     */
    func toWatts(value: Double) -> Double {
        return value * 735.49875
    }
}
