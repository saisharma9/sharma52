//
//  GameViewController.swift
//  Mantha_DiceGame2
//
//  Created by Mantha,Sai Sharma on 4/7/22.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var player1gameLabel: UILabel!
    
    
    @IBOutlet weak var player2gameLabel: UILabel!
    
    
    @IBOutlet weak var player1ScoreLabel: UILabel!
    
    
    @IBOutlet weak var player2ScoreLabel: UILabel!
    

    @IBOutlet weak var gameImageView: UIImageView!
    
    
    var player1 = ""
     var player2 = ""
    
    var num1 = 0
      var num2 = 0
      var won1 = 0
      var won2 = 0
      var imageNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player1gameLabel.text! = "Total number of games \(player1) won : \(won1)"
        
        player2gameLabel.text! = "Total number of games \(player2) won : \(won2)"
        
        player1ScoreLabel.text! = "\(player1) current score: \(num1)"
        
        player2ScoreLabel.text! =  "\(player2) current score: \(num2)"
        
        gameImageView.image = UIImage(named: "play")
        
        
    }
    
    
    @IBAction func rollDiceClicked(_ sender: UIButton)
    {
        num1 = Int.random(in: 1..<6)
               num2 = Int.random(in: 1..<6)
               if num1>num2{
                   won1+=1
                   imageNum = num1
               }
               else{
                   won2+=1
                   imageNum = num2
               }
               
        player1ScoreLabel.text! = "\(player1) current score: \(num1)"
        player2ScoreLabel.text! = "\(player2) current score: \(num2)"
        player1gameLabel.text! = "Total number of games \(player1) won : \(won1)"
        player2gameLabel.text! = "Total number of games \(player2) won : \(won2)"
               
               if num1==num2{
                   gameImageView.image = UIImage(named: "tie")
               }
               else{
                   
               
               
               switch imageNum {
               case 1:
                   gameImageView.image = UIImage(named: "dice1")

               case 2:
                   gameImageView.image = UIImage(named: "dice2")
                   
               case 3:
                   gameImageView.image = UIImage(named: "dice3")
                   
               case 4:
                   gameImageView.image = UIImage(named: "dice4")
                   
               case 5:
                   gameImageView.image = UIImage(named: "dice5")
                   
               case 6:
                   gameImageView.image = UIImage(named: "dice6")

               default:
                   print("Have you done something new?")
               }
               }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
