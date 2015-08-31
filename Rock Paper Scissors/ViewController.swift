//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Eleanor Stribling on 8/26/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let playerChoice = UInt32(0)
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
        println(computerChoice)
        return(computerChoice)
    }
    
    //rock player selection and segue
    @IBAction func rockSelect(){
        let playerChoice = UInt32(0)
        println("Player choice was 0")
    }
    
    @IBAction func selectRock(){
        var controller: resultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("resultViewController") as! resultViewController
        controller.computerChoice = self.computerPick()
        controller.playerChoice = UInt32(self.rockSelect())
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func paperSelect(sender: UIButton) {
        let playerChoice = UInt32(1)
        println("Player choice was 1")
    }
    
    @IBAction func scissorsSelect(sender: UIButton) {
        let playerChoice = UInt32(2)
        println("Player choice was 2")
    }
    

}

