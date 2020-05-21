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
        print(buSelect.tag)
        
    }
    
   var ActivePlayer = 1
    func playGame(buSelect: UIButton){
        if ActivePlayer == 1{
            buSelect.setTitle("X", for: UIControl.State.normal)
            buSelect.backgroundColor = UIColor(displayP3Red: 88/255, green: 231/255, blue: 147/255, alpha: 0.5)
            ActivePlayer = 2
        }else{
            buSelect.setTitle("O", for: UIControl.State.normal)
             buSelect.backgroundColor = UIColor(displayP3Red: 32/255, green: 192/255, blue: 243/255, alpha: 0.5)
            ActivePlayer = 1
        }
    }
   
    
    

}

