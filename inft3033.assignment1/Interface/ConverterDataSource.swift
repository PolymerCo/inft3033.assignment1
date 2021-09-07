//
//  ConverterRowDataSource.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 7/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

import UIKit

class ConverterDataSource: NSObject, UITableViewDataSource {
    
    /**
     Global conversion value that will be used to set the cell values
     */
    static var GlobalValue: Double = 0
    
    /**
     List of available converters. Will render in the order defined here.
     */
    let converters: [ConverterInstance] = [
        ConverterInstance(converter: ConverterKilowatts()),
        ConverterInstance(converter: ConverterWatts()),
        ConverterInstance(converter: ConverterMetricHorsepower()),
        ConverterInstance(converter: ConverterElectricalHorsepower()),
        ConverterInstance(converter: ConverterMechanicalHorsepower())
    ]
    
    /**
     Set number of sections in table view
     */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    /**
     Set number of rows in sections
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return converters.count;
    }
    
    /**
     * Setup cells
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "converterCell", for: indexPath) as! ConverterCell
        
        // extract instances
        let instance: ConverterInstance = converters[indexPath.row]
        cell.instance = instance
        
        // Set the converter value, then pass description and converted values onto the cell, if it wasn't recently edited
        instance.value = ConverterDataSource.GlobalValue
        cell.field?.text = "\(Utility.valueStringOf(number: instance.converted))"
        
        cell.label?.text = instance.converter.description
        
        return cell
    }
}

