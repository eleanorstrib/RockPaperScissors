//
//  resultViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 8/26/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import Foundation
import UIKit

class resultViewController: UIViewController {
    var computerChoice: String?
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!

    // dismiss this view and return to first screen
    @IBAction func dismissResult() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
