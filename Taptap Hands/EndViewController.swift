//
//  EndViewController.swift
//  Taptap Hands
//
//  Created by Jackie Choi on 6/15/17.
//  Copyright © 2017 Jackie Choi. All rights reserved.
//

import UIKit
import Social

class EndViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    
    var scoreData:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.layer.cornerRadius = 5.0
        label2.layer.cornerRadius = 5.0
        button1.layer.cornerRadius = 5.0
        button2.layer.cornerRadius = 5.0
        button3.layer.cornerRadius = 5.0
        button4.layer.cornerRadius = 5.0
        
        scoreLabel.text = scoreData
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAgain(_ sender: Any) {
        //as opposed to stacking views, dismiss the home and gamecontrollerview
        self.dismiss(animated: false, completion: nil)
        self.presentingViewController?.dismiss(animated: false, completion: nil)
        
    }
    
    
    @IBAction func shareTwitter(_ sender: Any) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            let twitter:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitter.setInitialText("Check out my score on Taptap Hands, y'all. Whopping \(scoreLabel.text!)")
            self.present(twitter, animated: true, completion: nil)
        
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please log into your Twitter acount within the settings", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    
  
}
