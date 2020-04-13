//
//  File.swift
//  Dicee-iOS13
//
//  Created by Julius Weyl on 13.04.20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    let faces = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollDice()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        rollDice()
    }
    
    func rollDice(){
        diceImageOne.image = faces.randomElement()
        diceImageTwo.image = faces.randomElement()
    }
    
}

 
