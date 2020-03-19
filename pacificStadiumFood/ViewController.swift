//
//  ViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/19.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var startButton: UIButtonAnimated!
    @IBOutlet weak var explanationButton: UIButtonAnimated!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.frame = CGRect(x: 184, y: 192, width: 400, height: 120)
        explanationButton.frame = CGRect(x: 184, y: 590, width: 400, height: 120)
        // Do any additional setup after loading the view.
        startButton.layer.cornerRadius = 30
        explanationButton.layer.cornerRadius = 30
        startButton.layer.masksToBounds = true
        explanationButton.layer.masksToBounds = true
        startButton.layer.borderWidth = 5
        startButton.layer.borderColor = UIColor.white.cgColor
        explanationButton.layer.borderWidth = 5
        explanationButton.layer.borderColor = UIColor.white.cgColor
        
        
    }
    
    

}
