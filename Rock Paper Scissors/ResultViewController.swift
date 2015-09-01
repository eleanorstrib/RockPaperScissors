//
//  ResultViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 9/1/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    var computerChoice: UInt32?
    var playerChoice: UInt32?
    

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        switch (self.computerChoice!) {
        case 0, 1, 2 where self.playerChoice == self.computerChoice:
            self.resultImage.image = UIImage(named: "tie")
            self.resultLabel.text="It was a tie!"
        case 0 where self.playerChoice == 1:
            self.resultImage.image = UIImage(named: "paperCoversRock")
            self.resultLabel.text="You win! Paper covers rock"
        case 0 where self.playerChoice == 2:
            self.resultImage.image = UIImage(named: "rockCrushesScissors")
            self.resultLabel.text="You lose! Rock crushes scissors"
        case 1 where self.playerChoice == 0:
            self.resultImage.image = UIImage(named: "paperCoversRock")
            self.resultLabel.text = "You lose! Paper covers rock"
        case 1 where self.playerChoice == 2:
            self.resultImage.image = UIImage(named: "scissorsCutPaper")
            self.resultLabel.text = "You lose! Scissors cut paper"
        case 2 where self.playerChoice == 0:
            self.resultImage.image = UIImage(named: "rockCrushesScissors")
            self.resultLabel.text = "You lose! Rock crushes scissors"
        case 2 where self.playerChoice == 1:
            self.resultImage.image = UIImage(named: "scissorsCutPaper")
            self.resultLabel.text = "You win! Scissors cut paper"
        default:
            self.resultImage.image = nil
            self.resultLabel.text = "Uh oh...something went wrong"
            
        }
    }
    
    @IBAction func dismissResult(sender: AnyObject) {
        println(self.playerChoice)
        println(self.computerChoice)
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

