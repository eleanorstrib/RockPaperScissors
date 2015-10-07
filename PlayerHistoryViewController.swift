//
//  PlayerHistoryViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 9/29/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import Foundation
import UIKit

class PlayerHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var playerHistoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // import the history array from the AppDelegate
    var history: [History] {
        return(UIApplication.sharedApplication().delegate as! AppDelegate).history
    }
    
    // find out the number of rows/items in history and pass to the view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println(history)
        return history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("gameResult") as! UITableViewCell
        let game = history[indexPath.row]
        
//        // Set the name and image
//        cell.textLabel?.text = history.result
//        cell.imageView?.image = UIImage(named: history.graphic)
//        cell.detailTextLabel?.text = "You chose \(history.player) & the computer chose \(history.computer)"

        return cell

    }
    
    
}