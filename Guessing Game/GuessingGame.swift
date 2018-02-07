//
//  GuessingGame.swift
//  Guessing Game
//
//  Created by Zang, Eric on 2018-01-20.
//  Copyright © 2018 Zang, Eric. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    //Property
    var numberToGuess : Int
    var numbersGuessed : [Int]
    //Initializer
    init() {
        numberToGuess = Int(arc4random_uniform(501)) // Generates a number between 0 to 500, but not 501

        //Make an empty list of numbers guessed
        numbersGuessed = []
    
    }
    
    //Checks the guess made
    mutating func compareGuessMade(providedGuess : Int) -> String {
        
        //Add the provided guess to the list of guesses made
        numbersGuessed.append(providedGuess)
        
        //Compare the provided guess to the ranom number
        if numberToGuess < providedGuess {
            return "Guess lower"
        } else if numberToGuess > providedGuess {
            return "Guess higher"
        } else {
            return "Yay, You guessed it!"
        }
        
    }


}


