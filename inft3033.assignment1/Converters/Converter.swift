//
//  Converter.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 1/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 Protocol to describe a generic converter.
*/
public protocol Converter {
    /**
     Describes the converter in a human readable way.
     */
    var description: String { get }
    
    /**
     Converts a value in Watts into the unit specified in this converter.
     
     - Parameter value: Value in Watts.
     - Returns: The value in this converter's unit
     */
    func fromWatts(value: Double) -> Double
    
    /**
     Converts a value specified in this converter's unit into Watts.
     
     - Parameter value: Value in this converters units.
     - Returns: The value in Watts
     */
    func toWatts(value: Double) -> Double
}
