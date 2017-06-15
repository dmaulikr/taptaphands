//
//  GameViewController.swift
//  Taptap Hands
//
//  Created by Jackie Choi on 6/15/17.
//  Copyright © 2017 Jackie Choi. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    @IBOutlet var button: UIButton!
 
    @IBOutlet var scoreLabel: UILabel!
    
    var tapInt = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.layer.cornerRadius = 5.0
        label2.layer.cornerRadius = 5.0
        button.layer.cornerRadius = 5.0
        
        tapInt = 0
        scoreLabel.text = String(tapInt)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
    @IBAction func tapMeButton(_ sender: Any) {
        tapInt+=1
        scoreLabel.text = String(tapInt)
        
    }
    


}
