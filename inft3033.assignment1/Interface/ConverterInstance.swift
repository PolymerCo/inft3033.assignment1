//
//  ConverterInstance.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 8/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

/**
 The converter instance stores a converter, and the value for the converversion.
*/
class ConverterInstance {
    /**
     Converter to use for this conversion instance
    */
    var converter: Converter
    
    /**
     Raw value (in Watts) of this instance
    */
    var value: Double = 0

    /**
     Converted value of this instance.
    */
    var converted: Double {
        get {
            return self.converter.fromWatts(value: self.value)
        }
    }
    
    init(converter: Converter) {
        self.converter = converter
    }
}
