//
//  ViewController.swift
//  ticTacToe
//
//  Created by Monserrat Silva on 21/05/20.
//  Copyright © 2020 Monserrat Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Action buttons
    @IBAction func buttonSelectEvent(_ sender: UIButton) {
        let buSelect = sender
        playGame(buSelect: buSelect)
        
        
    }
    
    //MARK: Lifecycle
    
    var ActivePlayer = 1
    var player1 = [Int]()
    var player2 = [Int]()
    
    func playGame(buSelect: UIButton){
        if ActivePlayer == 1{
            buSelect.setTitle("X", for: UIControl.State.normal)
            buSelect.backgroundColor = UIColor(displayP3Red: 88/255, green: 231/255, blue: 147/255, alpha: 0.5)
            player1.append(buSelect.tag)
            ActivePlayer = 2
            print(player1)
        }else{
            buSelect.setTitle("O", for: UIControl.State.normal)
             buSelect.backgroundColor = UIColor(displayP3Red: 32/255, green: 192/255, blue: 243/255, alpha: 0.5)
            player2.append(buSelect.tag)
            ActivePlayer = 1
            print(player2)
        }
        buSelect.isEnabled = false
        findWinner ()
    }
    
    // Find the winner
    func findWinner (){
        var winner = -1
        
        //row 1
        if(player1.contains(1) && player1.contains(2) && player1.contains(3)){
            winner = 1
        }
        if(player2.contains(1) && player2.contains(2) && player2.contains(3)){
            winner = 2
        }
        
        //row 2
        if(player1.contains(4) && player1.contains(5) && player1.contains(6)){
              winner = 1
          }
        if(player2.contains(4) && player2.contains(5) && player2.contains(6)){
              winner = 2
        }
        
        //row 3
         if(player1.contains(7) && player1.contains(8) && player1.contains(9)){
               winner = 1
           }
         if(player2.contains(7) && player2.contains(8) && player2.contains(9)){
               winner = 2
         }
        
        //column 1
        if(player1.contains(1) && player1.contains(4) && player1.contains(7)){
                winner = 1
        }
        if(player2.contains(1) && player2.contains(4) && player2.contains(7)){
                winner = 2
        }
             
        //column 2
        if(player1.contains(2) && player1.contains(5) && player1.contains(8)){
                winner = 1
        }
        if(player2.contains(2) && player2.contains(5) && player2.contains(8)){
                winner = 2
        }
             
        //column 3
        if(player1.contains(3) && player1.contains(6) && player1.contains(9)){
                winner = 1
        }
        if(player2.contains(3) && player2.contains(6) && player2.contains(9)){
                winner = 2
        }
        if winner != -1 {
            var msg = ""
            if winner == 1{
                msg = "Player 1 is winner"
            }else{
                msg = "Player 2 is winner"
            }
            print(msg)
            
        }
        
    }
   
    
    

}

