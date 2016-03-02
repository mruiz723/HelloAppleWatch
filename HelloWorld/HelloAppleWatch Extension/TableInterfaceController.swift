//
//  TableInterfaceController.swift
//  HelloWorld
//
//  Created by mruiz723 on 2/29/16.
//  Copyright © 2016 Integro. All rights reserved.
//

import WatchKit
import Foundation


class TableInterfaceController: WKInterfaceController {
    
    //MARK: IBOutlets
    @IBOutlet var table: WKInterfaceTable!

    //MARK: Properties
    let rowIdentifier = "JobRow"
    var jobs = [Job]()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        jobs = Job.jobs()
        configureTableWithData()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //MARK: Table
    func configureTableWithData(){
        self.table.setNumberOfRows(jobs.count, withRowType: rowIdentifier)
        
        for var i = 0; i < self.table.numberOfRows; i++ {
            if let row = self.table.rowControllerAtIndex(i) as? JobRow{
                let job = jobs[i]
                row.nameJobLabel.setText(job.name)
                row.salaryLabel.setText(job.salary)
            }
            
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let job = jobs[rowIndex]
        self.pushControllerWithName("Detail", context: job)
    }

}
