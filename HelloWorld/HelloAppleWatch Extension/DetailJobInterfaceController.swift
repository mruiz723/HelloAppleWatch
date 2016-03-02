//
//  DetailJobInterfaceController.swift
//  HelloWorld
//
//  Created by mruiz723 on 3/1/16.
//  Copyright © 2016 Integro. All rights reserved.
//

import WatchKit
import Foundation


class DetailJobInterfaceController: WKInterfaceController {

    //MARK: - IBOutlets
    @IBOutlet var jobTitleLabel: WKInterfaceLabel!
    @IBOutlet var salaryLabel: WKInterfaceLabel!
    @IBOutlet var descriptionLabel: WKInterfaceLabel!
    
    @IBOutlet var messageLabel: WKInterfaceLabel!
    @IBOutlet var contentGroup: WKInterfaceGroup!
    
    @IBOutlet var messageGroup: WKInterfaceGroup!
    
    @IBAction func doApply() {
        
        messageLabel.setText(":-)")
        messageGroup.setHidden(false)
        contentGroup.setHidden(true)
    }
    
    @IBAction func doDecline() {
        
        messageLabel.setText(":-(")
        messageGroup.setHidden(false)
        contentGroup.setHidden(true)
        
    }
    
    @IBAction func ok() {
        messageGroup.setHidden(true)
        contentGroup.setHidden(false)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        if let job = context as? Job{
            setupInterface(job)
        }
        
    }

    //MARK: - LifeCycle
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //MARK: Utils
    func setupInterface(job:Job){
        jobTitleLabel.setText(job.name)
        salaryLabel.setText(job.salary)
        descriptionLabel.setText(job.descriptionJob)
    }

}
