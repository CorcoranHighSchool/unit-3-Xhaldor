//
//  ViewController.swift
//  Login Lab
//
//  Created by Josue Manzo Gomez on 2/27/23.
//

import UIKit


class ViewController: UIViewController {
 
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var forgotUserName: UIButton!
    
    @IBOutlet weak var forgotPassWord: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
    }
    @IBAction func forgotUser(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserNameorPassWord", sender: sender)
    }
    @IBAction func forgotPass(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserNameorPassWord", sender: sender)
    }
    
}
/*
 guard let sender = (sender as? UIButton else {return}
 if sender == forgotPasswordButton { segue.destination.navigationItem.title = "Forgot Password" }
 else if sender == forgotUsernameButton { segue.destination.navigationItem.title = "Forgot Username" }
 else { segue.destination.navigationItem.title = usernameTextField.text }
 
 Fails and no matter what I did it crashed the code. Monday remind me.
 */


