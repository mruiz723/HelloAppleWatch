//
//  ImageInterfaceController.swift
//  HelloWorld
//
//  Created by mruiz723 on 2/29/16.
//  Copyright © 2016 Integro. All rights reserved.
//

import WatchKit
import Foundation


class ImageInterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "Table" {
            alert()
        }
        
        return nil
    }

    
    //MARK: - Utils
    func alert() {
        let action = WKAlertAction(title: "OK", style: WKAlertActionStyle.Default) { () -> Void in
            self.pushControllerWithName("TableInterface", context: nil)
        }
        
        let title = "Table"
        let message = "Jobs in tech"
        
        self.presentAlertControllerWithTitle(title, message: message, preferredStyle: .Alert, actions: [action])
    }
    

}
