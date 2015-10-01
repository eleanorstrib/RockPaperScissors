
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
    @IBOutlet weak var instructionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func computerPick() -> Int?{
        //chooses a value for the computer's selection
        let computerChoice = Int(arc4random_uniform(3))
        println(computerChoice)
        println("computer choice ^")
        return(computerChoice)
    }
    
    //rock player selection and segue - self contained, code only
    @IBAction func selectRock(){
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        controller.computerChoice = self.computerPick()
        controller.playerChoice = Int(0)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    //code for paper and scissor selections and segue
    //both use prepare for segue and call playerPick function
    @IBAction func selectPaper(sender: UIButton) {
        performSegueWithIdentifier("goToResult", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToResult" {
            let controller = segue.destinationViewController as! ResultViewController
            controller.computerChoice = self.computerPick()
            controller.playerChoice = playerPick(sender as! UIButton)
            println(controller.playerChoice)
        }
    }
    
    @IBAction func selectScissors(sender: UIButton) {
        performSegueWithIdentifier("goToResult", sender: sender)
    }
    
    //only part I adapted slightly from sample solution
    //alternative was to add conditional to prepareForSegue based on sender
    private func playerPick(sender: UIButton) -> Int {
        if sender == paperButton {
            return 1
        }
        else {
            return 2
        }
    
    }
    
}