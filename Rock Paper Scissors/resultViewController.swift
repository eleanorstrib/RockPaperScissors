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
    var computerChoice: UInt32?
    let choiceArray = ["rock", "paper", "scissors"]
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch UInt32(self.computerChoice!) {
            case 0:
                println(choiceArray[0])
            case 1:
                println(choiceArray[1])
            case 2:
                println(choiceArray[2])
            default:
                println("something went wrong")

    }
}
    
        // dismiss this view and return to first screen
        @IBAction func dismissResult() {
            self.dismissViewControllerAnimated(true, completion: nil)
        }

}




