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
    var computerChoice: Int!
    var playerChoice: Int!
    var result: String!
    var computerPlayed: String!
    var playerPlayed: String!
    

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var showHistoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch (self.computerChoice!) {
        case 0...2 where self.playerChoice == self.computerChoice:
            self.resultImage.image = UIImage(named: "tie")
            self.resultLabel.text="It was a tie!"
            result = "Tie"
            if computerChoice == 1 {
                computerPlayed = "rock"
            } else if computerChoice == 2{
                computerPlayed = "paper"
            } else {
                computerPlayed = "scissors"
            }
            playerPlayed = computerPlayed
        case 0 where self.playerChoice == 1:
            self.resultImage.image = UIImage(named: "paperCoversRock")
            self.resultLabel.text="You win! Paper covers rock"
            result = "Win"
            computerPlayed = "rock"
            playerPlayed  = "paper"
        case 0 where self.playerChoice == 2:
            self.resultImage.image = UIImage(named: "rockCrushesScissors")
            self.resultLabel.text="You lose! Rock crushes scissors"
            result = "Loss"
            computerPlayed="rock"
            playerPlayed="scissors"
        case 1 where self.playerChoice == 0:
            self.resultImage.image = UIImage(named: "paperCoversRock")
            self.resultLabel.text = "You lose! Paper covers rock"
            result = "Loss"
            computerPlayed="paper"
            playerPlayed="rock"
        case 1 where self.playerChoice == 2:
            self.resultImage.image = UIImage(named: "scissorsCutPaper")
            self.resultLabel.text = "You win! Scissors cut paper"
            result = "Win"
            computerPlayed="paper"
            playerPlayed="scissors"
        case 2 where self.playerChoice == 0:
            self.resultImage.image = UIImage(named: "rockCrushesScissors")
            self.resultLabel.text = "You win! Rock crushes scissors"
            result = "Win"
            computerPlayed="scissors"
            playerPlayed="rock"
        case 2 where self.playerChoice == 1:
            self.resultImage.image = UIImage(named: "scissorsCutPaper")
            self.resultLabel.text = "You lose! Scissors cut paper"
            result = "Win"
            computerPlayed="scissors"
            playerPlayed="paper"
        default:
            self.resultImage.image = nil
            self.resultLabel.text = "Uh oh...something went wrong"
            result = "Error"
            computerPlayed="error"
            playerPlayed="error"
        }
        
        
        //set properties of the match results
        var history = History(result: result,
            computer: self.computerPlayed!,
            player: self.playerPlayed!,
            graphic: self.resultImage.image!)
        
        // access history array in AppDelegate and append data
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        appDelegate.history.append(history)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "seeHistory" {
            segue.destinationViewController as! PlayerHistoryViewController
        }
    }
    
    

    @IBAction func dismissResult(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

