//
//  ViewController.swift
//  Mantha_DiceGame
//
//  Created by Mantha,Sai Sharma on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var player1name: UITextField!
    
    @IBOutlet weak var player2name: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func rollingButton(_ sender: UIButton)
    {
        var player1 = player1name.text!
        var player2 = player2name.text!
        
        let randomInt1 = Int.random(in: 0..<6)
        let randomInt2 = Int.random(in: 0..<6)
        
        if(randomInt1>randomInt2)
        {
            displayLabel.text = "\(player1)'s Roll is : \(randomInt1)\r  "
            displayLabel.text = "\(player2)'s Roll is : \(randomInt2)\r  "
            displayLabel.text = "\(player1) won the game"
            
        }
        
        else if (randomInt1==randomInt2)
        {
            displayLabel.text = "\(player1)'s Roll is : \(randomInt1)\r  "
            displayLabel.text = "\(player2)'s Roll is : \(randomInt2)\r  "
            displayLabel.text = "the game is tie"
        }
        
        else
        {
            displayLabel.text = "\(player1)'s Roll is : \(randomInt1)\r  "
            displayLabel.text = "\(player2)'s Roll is : \(randomInt2)\r  "
            displayLabel.text = "\(player2) won the game"
            
        }
        
        
    }
    
    
    
}

