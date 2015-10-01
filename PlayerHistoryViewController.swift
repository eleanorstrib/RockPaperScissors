//
//  PlayerHistoryViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 9/29/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import Foundation
import UIKit

class PlayerHistoryViewController: UIViewController {

    var history: [History] {
        return(UIApplication.sharedApplication().delegate as! AppDelegate).history
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}