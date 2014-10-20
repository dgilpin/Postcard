//
//  ViewController.swift
//  Postcard
//
//  Created by Dan Gilpin on 10/16/14.
//  Copyright (c) 2014 GCS-NET, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var toTextLabel: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonPressed(sender: UIButton) {
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = messageTextField.text
        messageLabel.hidden = false
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        sendButton.setTitle("Message sent", forState: UIControlState.Normal)
    }

}

