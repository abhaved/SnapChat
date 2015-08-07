//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(sender: AnyObject) {
        if username.text == "" || password.text == "" {
            println("please fill out username and password")
        }
        else {
            PFUser.logInWithUsernameInBackground(username.text, password: password.text, block: { (user, error) -> Void in
                if error == nil {
                    println("Logged in!")
                    self.performSegueWithIdentifier("login", sender: self)
                }
                else {
                    println("Error with log in. Try again")
                }
                
            })
        }
        
    }
    
}

