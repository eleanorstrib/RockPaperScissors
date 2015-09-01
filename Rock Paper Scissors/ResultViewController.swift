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
    @IBOutlet weak var youMadeit: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch (self.computerChoice!) {
        case 0, 1, 2 where self.playerChoice == self.computerChoice:
            self.resultImage.image = UIImage(named: "tie")
            println("tie")
        case 0 where self.playerChoice == 1:
            self.resultImage.image = UIImage(named: "paperCoversRock")
            println("You win, paper covers rock")
        case 0 where self.playerChoice == 2:
            self.resultImage.image = UIImage(named: "rockCrushesScissors")
            println("you lose, rock crushes scissors")
        case 1 where self.playerChoice == 0:
            self.resultImage.image = UIImage(named: "paperCoversRock")
            println("paper covers rock, you lose")
        case 1 where self.playerChoice == 2:
            self.resultImage.image = UIImage(named: "scissorsCutPaper")
            println("scissors cut paper you lose")
        case 2 where self.playerChoice == 0:
            self.resultImage.image = UIImage(named: "rockCrushesScissors")
            println("rock crushes scissors, you lose")
        case 2 where self.playerChoice == 1:
            self.resultImage.image = UIImage(named: "scissorsCutPaper")
            println("scissors cut paper you win")
        default:
            self.resultImage.image = nil
            println("something went wrong")
            
        }
    }
    
    @IBAction func dismissResult(sender: AnyObject) {
        println(self.playerChoice)
        println(self.computerChoice)
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

