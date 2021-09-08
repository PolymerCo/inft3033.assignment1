//
//  ConverterTableController.swift
//  inft3033.assignment1
//
//  Created by Oliver Mitchell on 7/9/21.
//  Copyright © 2021 Oliver Mitchell. All rights reserved.
//

import UIKit

class ConverterController: UITableViewController {
    /**
     Data source that will determine the values within the table cells.
    */
    var dataSource: ConverterDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a new table data source and map it to the table
        self.dataSource = ConverterDataSource()
        self.tableView.dataSource = self.dataSource
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /**
     Performs the actions nessecary when a cell has changed.
    */
    func cellChanged() {
        self.tableView.reloadData()
    }
}
