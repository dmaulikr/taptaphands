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
    @IBOutlet var timeLabel: UILabel!
    
    var tapInt = 0
    
    var startInt = 3
    var startTimer = Timer()
    
    var gameInt = 10
    var gameTimer = Timer()
    var recordData:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.layer.cornerRadius = 5.0
        label2.layer.cornerRadius = 5.0
        button.layer.cornerRadius = 5.0
        
        tapInt = 0
        scoreLabel.text = String(tapInt)
        
        startInt = 3
        button.setTitle(String(startInt), for: .normal)
        button.isEnabled = false
        
        startTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.startGameTimer), userInfo: nil, repeats: true)
        
        gameInt = 3
        timeLabel.text = String(gameInt)
        
        let userDefaults = Foundation.UserDefaults.standard
        let value = userDefaults.string(forKey: "Record")
        recordData = value
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
    @IBAction func tapMeButton(_ sender: Any) {
        tapInt += 1
        scoreLabel.text = String(tapInt)
    }
    
    func startGameTimer() {
        startInt = startInt - 1
        button.setTitle(String(startInt), for: .normal)
        
        if (startInt==0) {
            
            startTimer.invalidate()
            
            button.setTitle("Tap Me", for: .normal)
            
            button.isEnabled = true;
            
            gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(GameViewController.game), userInfo: nil, repeats: true)
            
        }
        
    }
    
    func game() {
        gameInt -= 1
        timeLabel.text = String(gameInt)
        
        if (gameInt == 0) {
            gameTimer.invalidate()
            
            if recordData == nil { //first time user
                let savedString = scoreLabel.text
                let userDefaults = Foundation.UserDefaults.standard
                userDefaults.set(savedString, forKey: "Record")
            } else {
                
                let score:Int? = Int(scoreLabel.text!)
                let record:Int? = Int(recordData)
                
                if score! > record! {
                    
                    let savedString = scoreLabel.text
                    let userDefaults = Foundation.UserDefaults.standard
                    userDefaults.set(savedString, forKey: "Record")
                }
            }

            
            
            button.isEnabled = false;
            
            //trigger view switcher function
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(GameViewController.end), userInfo: nil, repeats: false)
            
        }
    }
    
    func end() {
        //switch off to the EndViewController
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "endGame") as! EndViewController
        
        vc.scoreData = scoreLabel.text
        
        self.present(vc, animated: false, completion: nil)
        
        
    }
    


}
