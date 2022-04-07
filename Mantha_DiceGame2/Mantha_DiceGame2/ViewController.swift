//
//  ViewController.swift
//  Mantha_DiceGame2
//
//  Created by Mantha,Sai Sharma on 4/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var player1Name: UITextField!
    
    
    @IBOutlet weak var player2Name: UITextField!
    
    
    var player1 = ""
     var player2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func playDiceClicked(_ sender: Any)
    {
        var player1Name =  player1Name.text!
        var player2Name =  player2Name.text!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            var transition = segue.identifier
            if transition == "resultSegue"{
                //make ResultViewController
                var destination = segue.destination as! GameViewController
                destination.player1 = player1Name.text!
                destination.player2 = player2Name.text!
                
            }
        }
    
    
}

