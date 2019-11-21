//
//  ViewController.swift
//  AlertProject
//
//  Created by Dhaivick Jasumal on 21/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var unameText: UITextField!
    @IBOutlet weak var pwdText: UITextField!
    @IBOutlet weak var retypepwdText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        if unameText.text==""{
            createAlert(alertTitle:"Error",alertMsg:"Please input username")
            
        }
        else if pwdText.text==""{
             createAlert(alertTitle:"Error",alertMsg:"Please input password")
        }
        else if retypepwdText.text != pwdText.text{
            createAlert(alertTitle:"Error",alertMsg:"Passwords dont match")
        }
        else{
            createAlert(alertTitle:"Success",alertMsg:"Form Submitted")
        }
        
    }
    
    //function to create alert
    func createAlert(alertTitle:String, alertMsg:String){
        let alert=UIAlertController(title:alertTitle, message: alertMsg , preferredStyle: UIAlertController.Style.alert)
        let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert,animated: true, completion: nil)
        
    }
    
}

