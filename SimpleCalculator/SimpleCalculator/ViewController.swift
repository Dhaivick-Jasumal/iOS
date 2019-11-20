//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Dhaivick Jasumal on 15/11/19.
//  Copyright © 2019 Dhaivick Jasumal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber=Int(firstText.text!){
            if let secondNumber=Int(secondText.text!){
                let result = firstNumber + secondNumber;
                resultLabel.text="Total: "+String(result);
            }
            else{
                resultLabel.text="Please enter proper input";
            }
        }
        else{
            resultLabel.text="Please enter proper input";
        }
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber=Int(firstText.text!){
            if let secondNumber=Int(secondText.text!){
                let result = firstNumber - secondNumber;
                resultLabel.text="Total: "+String(result);
            }
            else{
                resultLabel.text="Please enter proper input";
            }
        }
        else{
            resultLabel.text="Please enter proper input";
        }
    }
    
    
    @IBAction func productClicked(_ sender: Any) {
        if let firstNumber=Int(firstText.text!){
            if let secondNumber=Int(secondText.text!){
                let result = firstNumber * secondNumber;
                resultLabel.text="Total: "+String(result);
            }
            else{
                resultLabel.text="Please enter proper input";
            }
        }
        else{
            resultLabel.text="Please enter proper input";
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber=Int(firstText.text!){
            if let secondNumber=Int(secondText.text!){
                let result = firstNumber / secondNumber;
                resultLabel.text="Total: "+String(result);
            }
            else{
                resultLabel.text="Please enter proper input";
            }
        }
        else{
            resultLabel.text="Please enter proper input";
        }
    }
    

}

