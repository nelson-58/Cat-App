//
//  ViewController.swift
//  Cat App
//
//  Created by Andy Harris on 12/02/2018.
//  Copyright © 2018 Andy Harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var answerField: UILabel!
    
    @IBOutlet weak var ageText: UITextField!
    
    // Age is in text. Need to convert to an integer
    @IBAction func getAge(_ sender: Any) {
        
        if let ageEntered = ageText.text{
            
            if let ageAsNumber = Int(ageEntered){
                
                let ageInCatYears = ageAsNumber * 7
                answerField.text = "Your cat is " + String(ageInCatYears) + " in cat years"
            } else{
                answerField.text = "Please enter a number"
            
            }
        } else{
            answerField.text = "Please enter your cat's actual age first"
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

