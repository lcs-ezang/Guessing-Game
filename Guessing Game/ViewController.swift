//
//  ViewController.swift
//  Guessing Game
//
//  Created by Zang, Eric on 2018-01-13.
//  Copyright © 2018 Zang, Eric. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var textFieldGuess: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    
    //MARK: Properities(variables)
    var game = GuessingGame()
    
    //MARK: Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func guessSubmitted(_ sender: Any) {
    
        //Print the guess that was given
        print(textFieldGuess.text)
        
        //Unwrap the text field's contents
        //(Making sure that the text field is not contaning a nil value)
        guard let inputGiven = textFieldGuess.text else {
            //If we could not unwrap the optional
            //then quit this function
            return
        }
    
        //Make sure that the value is an integer
        //(Handles cases where the user enters text)
        //e.g five
        guard let guessProvided = Int(inputGiven) else {
            //If we can't convert an integer
            //then quit and return
            return
        }
        
    //Print the actual number that was given
    print(guessProvided)
   
    //Print the number that needs to be guessed
    print("The number to be guessed is:")
    print(game.numberToGuess)
    
    //Compare the number guessed to the number to be guessed
    //if-else if else statements
        
        //Send feedback to the user
        labelMessage.text =
        game.compareGuessMade(providedGuess: guessProvided)
    
    //MARK: Custom Functions
    

}

}
