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
        
            guard let sender = (sender as? UIButton) else {return}
        if sender == forgotPassWord {
            segue.destination.navigationItem.title = "Forgot Password" }
        else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username" }
        else {
            segue.destination.navigationItem.title = username.text
            
        }
        
    }
         
    
    @IBAction func forgotUser(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserName", sender: sender)
    }
    @IBAction func forgotPass(_ sender: Any) {
        performSegue(withIdentifier: "forgotPassWord", sender: sender)
    }
    
}



