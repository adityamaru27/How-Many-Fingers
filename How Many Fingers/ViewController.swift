//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Aditya Maru on 2016-02-15.
//  Copyright © 2016 Aditya Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var prompt: UILabel!
    
    @IBOutlet weak var answer: UITextField!

    @IBAction func submit(sender: AnyObject)
    {
        let random = String(arc4random_uniform(6))
        if answer.text == random
        {
            prompt.text = "You're Right!"
        }
        else
        {
            prompt.text = "You're wrong! The number was " + String(random)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

