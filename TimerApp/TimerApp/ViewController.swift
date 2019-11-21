//
//  ViewController.swift
//  TimerApp
//
//  Created by Dhaivick Jasumal on 21/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeCountLabel: UILabel!
    var timer=Timer()
    var counter=10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startClicked(_ sender: Any) {
        
        //timeCountLabel.text="Your time starts now"
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction(){
        if counter==0{
           timer.invalidate()
           timeCountLabel.text="Time Over"
           counter=10
        }
        else{
        timeCountLabel.text="Time: \(counter)"
        counter-=1
        }
    }
    

}

