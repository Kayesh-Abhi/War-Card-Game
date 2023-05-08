//
//  ViewController.swift
//  WarCardGame
//
//  Created by kayesh Abhisheka on 2023-04-11.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet means in references object in storyboard
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //for action button
    //sender here is the reference to the button
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //update image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        //compare the random numbers
        if (leftNumber > rightNumber){
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if (rightNumber > leftNumber){
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
          //tie
        }   
    
        
        
    
    }
    
    
    

}

