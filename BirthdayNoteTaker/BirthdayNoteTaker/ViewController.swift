//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Dhaivick Jasumal on 17/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthDateTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthDateLabel: UILabel!
    
    //get stored object in storage
    let storedName=UserDefaults.standard.object(forKey: "name")
    let storedBirthday=UserDefaults.standard.object(forKey: "birthday")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        //if value is string or null
        if let newName=storedName as? String {
            nameLabel.text="Name: "+newName
        }
        
        //if value is string or null
        if let newBirthday=storedBirthday as? String{
            birthDateLabel.text="Birthdate: "+newBirthday
        }
    }

    
    @IBAction func saveClicked(_ sender: Any) {
        
        //small storage space for storing data in mobile as key value pairs
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthDateTextField.text!, forKey: "birthday")
        
        nameLabel.text="Name: "+nameTextField.text!
        birthDateLabel.text="Birthdate: "+birthDateTextField.text!
    }
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedBirthday=UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text="Name: "
        }
        
        if (storedBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthDateLabel.text="Birthdate: "
        }
    }
    
}

