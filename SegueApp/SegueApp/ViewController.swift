//
//  ViewController.swift
//  SegueApp
//
//  Created by Dhaivick Jasumal on 20/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBAction func sendClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // to clear text when went back
    override func viewWillAppear(_ animated: Bool) {
        nameText.text=""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toSecondVC"{
            let destinationVC=segue.destination as! SecondViewController
            destinationVC.username=nameText.text!
        }
    }


}

