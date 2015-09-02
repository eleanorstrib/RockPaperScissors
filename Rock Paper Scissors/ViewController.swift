
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
        // Do any additional setup after loading the view, typically from a nib.
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
    
    //rock player selection and segue
    @IBAction func selectRock(){
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        controller.computerChoice = self.computerPick()
        controller.playerChoice = Int(0)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "goToResult" {
            let controller = segue.destinationViewController as! ResultViewController
            controller.computerChoice = self.computerPick()
            controller.playerChoice = 1
            println(controller.computerChoice)
        }
    }
    
    @IBAction func selectPaper(sender: UIButton) {
        var playerChoice = Int(1)
        print(playerChoice)
        println("player choice is 1")
        performSegueWithIdentifier("goToResult", sender: self)
    }
    
    @IBAction func selectScissors(sender: UIButton) {
        var playerChoice = Int(2)
        print(playerChoice)
        println("player choice is 2")
        performSegueWithIdentifier("goToResult", sender: self)
        
    }
    
//    private func playerChoice(sender: UIButton) -> Int {
//        if sender = rockButton {
//            return 0
//        } else if sender = paperButton {
//            return 1
//        } else {
//            return 2
//        }
//    
//    }
    
}