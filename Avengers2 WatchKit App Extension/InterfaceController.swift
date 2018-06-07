//
//  InterfaceController.swift
//  Avengers2 WatchKit App Extension
//
//  Created by Alumno on 01/06/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tableView: WKInterfaceTable!
    
    
    
    var avengers = ["Thor", "Iron Man", "Black Widow", "The Hulk", "Capitan America", "Hawkeye" ]
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        setupTable()
    }
    
    func setupTable() {
        tableView.setNumberOfRows(avengers.count, withRowType: "AvengerRow")
        
        for i in 0 ..< avengers.count {
            if let row = tableView.rowController(at: i) as? AvengerRow {
                row.name.setText(avengers[i])
            }
        }
        
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        self.pushController(withName: "showDetails", context: avengers[rowIndex])
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
