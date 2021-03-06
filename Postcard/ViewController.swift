//
//  ViewController.swift
//  Postcard
//
//  Created by doris on 10/11/2014.
//  Copyright (c) 2014 urbanshed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var enterNameTextField: UITextField!
  @IBOutlet weak var enterMessageTextField: UITextField!
  @IBOutlet weak var mailButton: UIButton!
  @IBOutlet weak var messageLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func sendMailButtonPressed(sender: UIButton) {
    nameLabel.text = "hi " + enterNameTextField.text
    messageLabel.text = enterMessageTextField.text
    enterMessageTextField.text = ""
    enterNameTextField.text = ""
    nameLabel.textColor = UIColor.blueColor()
    messageLabel.textColor = UIColor.redColor()
    mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    messageLabel.hidden = false
    nameLabel.hidden = false
    // make the keyboard go away
    enterMessageTextField.resignFirstResponder()
    
  }
 
}

