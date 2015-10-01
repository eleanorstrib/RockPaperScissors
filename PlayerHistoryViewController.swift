//
//  PlayerHistoryViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 9/29/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import Foundation
import UIKit

class PlayerHistoryViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var playerHistoryTable: UITableView!

    
    // import the history array from the AppDelegate
    var history: [History] {
        return(UIApplication.sharedApplication().delegate as! AppDelegate).history
    }
    
    // find out the number of rows/items in history and pass to the view
    func TableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println(history.count)
        return history.count
    }
    
//    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
////        let cell = tableView.dequeueReusableHeaderFooterViewWithIdentifier("gameResult") as! UITableViewCell
////        return cell
//    }

    
    
}