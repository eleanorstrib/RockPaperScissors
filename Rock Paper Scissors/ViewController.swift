
//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 8/26/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playerChoice: UInt32?
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func computerPick() -> UInt32?{
        //chooses a value for the computer's selection
        let computerChoice = arc4random_uniform(3)
        //TODO: remove this print statement for debugging
        println(computerChoice)
        return(computerChoice)
    }
    
    //rock player selection and segue
    
    @IBAction func selectRock(){
        let playerChoice = UInt32(0)
        //TODO: remove this print statement for debugging
        println("Player choice was 0")
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        controller.computerChoice = self.computerPick()!
        controller.playerChoice = playerChoice
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func selectPaper(sender: UIButton) {
        let playerChoice = UInt32(1)
        println("Player choice was 1")
        
        performSegueWithIdentifier("goToResult", sender: self)
        
    }
    
    @IBAction func scissorsSelect(sender: UIButton) {
        let playerChoice = UInt32(2)
        //TODO: remove this print statement for debugging
        println("Player choice was 2")
        performSegueWithIdentifier("goToResult", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToResult" {
            let controller = segue.destinationViewController as! ResultViewController
            controller.computerChoice = self.computerPick()
            controller.playerChoice = self.playerChoice
        }
    }
}