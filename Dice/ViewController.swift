 //
//  ViewController.swift
//  Dice
//
//  Created by Maksim Pansevich on 5/9/19.
//  Copyright © 2019 Maksim Pansevich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var diceIndex1: Int = 0
    var diceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceIndex1 = Int.random(in: 0 ... 5)
        diceIndex2 = Int.random(in: 0 ... 5)
        
        print(diceIndex1)
        print(diceIndex2)
        
        diceImageView1.image = UIImage(named: diceArray[diceIndex1])
        diceImageView2.image = UIImage(named: diceArray[diceIndex2])
        
        //OR without an array
        //diceImageView1.image = UIImage(named: "dice\(diceIndex1+1)")
        //diceImageView2.image = UIImage(named: "dice\(diceIndex2+1)")
        
    }
    
}

