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
    var playerChoice: UInt32?
    let choiceArray = ["rock", "paper", "scissors"]
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch UInt32(self.computerChoice!) {
            case 0:
                if playerChoice == 0 {
                    println("it's a tie!")
                } else if playerChoice == 1 {
                    println("paper covers rock, you win!")
                } else {
                    println("rock smashes scissors - you lose")
                }
                println(choiceArray[1])
            case 1:
                if playerChoice == 0 {
                    println("paper covers rock, you lose!")
                } else if playerChoice == 1 {
                    println("it's a tie!")
                } else {
                    println("scissors cut paper - you win!")
                }
                println(choiceArray[1])
            case 2:
                if playerChoice == 0 {
                    println("rock smashes scissors - you lose")
                } else if playerChoice == 1 {
                    println("scissors cut paper - you win!")
                } else {
                    println("it's a tie!")
                }
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




