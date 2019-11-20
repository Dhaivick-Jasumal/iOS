//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Dhaivick Jasumal on 14/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: Any) {
        if imageView.image==UIImage(named: "download1"){
            imageView.image=UIImage(named:"download2")
            //download2 is file name of second image
        }
        else{
            imageView.image=UIImage(named:"download1")
        }
    }
}

