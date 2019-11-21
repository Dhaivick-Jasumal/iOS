//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Dhaivick Jasumal on 21/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled=true
        let gestureRecognizer=UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic(){
        if imageView.image==UIImage(named:"sanam"){
            imageView.image=UIImage(named: "samar")
            labelText.text="Samar Puri"
        }
        else{
            imageView.image=UIImage(named:"sanam")
            labelText.text="Sanam Puri"
        }
    }


}

