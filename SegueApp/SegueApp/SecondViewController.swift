//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Dhaivick Jasumal on 20/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var username=""

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text=username

        // Do any additional setup after loading the view.
    }
    

}
