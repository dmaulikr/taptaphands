//
//  EndViewController.swift
//  Taptap Hands
//
//  Created by Jackie Choi on 6/15/17.
//  Copyright © 2017 Jackie Choi. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.layer.cornerRadius = 5.0
        label2.layer.cornerRadius = 5.0
        button1.layer.cornerRadius = 5.0
        button2.layer.cornerRadius = 5.0
        button3.layer.cornerRadius = 5.0
        button4.layer.cornerRadius = 5.0
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
