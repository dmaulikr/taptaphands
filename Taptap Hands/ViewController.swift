//
//  ViewController.swift
//  Taptap Hands
//
//  Created by Jackie Choi on 6/14/17.
//  Copyright © 2017 Jackie Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!

    @IBOutlet var button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label1.layer.cornerRadius = 5.0
        label2.layer.cornerRadius = 5.0
        button.layer.cornerRadius = 5.0
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

