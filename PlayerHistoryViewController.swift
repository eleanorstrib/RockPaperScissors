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

    @IBOutlet weak var navBar: UINavigationBar!
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
        return history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("gameResult") as! UITableViewCell
        let game = history[indexPath.row]
        
        //set table content
        cell.textLabel?.text = game.result
        cell.imageView?.image =  game.graphic!
        cell.detailTextLabel?.text = "You: \(game.player) Computer: \(game.computer)"

        return cell

    }
    
    
}