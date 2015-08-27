//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 8/26/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func computerPick() -> String{
        //chooses a value for the computer's selection
        let choiceArray = ["rock", "paper", "scissors"]
        let computerChoiceIndex = Int(arc4random_uniform(3)+1)
        let computerChoice = choiceArray[computerChoiceIndex]
        println(computerChoice)
        return(computerChoice)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! resultViewController
        controller.computerChoice = self.computerPick()
    }

}

