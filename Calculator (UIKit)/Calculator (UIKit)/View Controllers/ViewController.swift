//
//  ViewController.swift
//  Calculator (UIKit)
//
//  Created by Pierpaolo Siciliano on 24/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        resultLabel.text! = "0"
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        let buttonNumber = sender.titleLabel!.text!
        let currentNumber = resultLabel.text!
        
        if currentNumber == "0" && buttonNumber != "0" {
            resultLabel.text! = buttonNumber
        } else if currentNumber != "0" {
            resultLabel.text! += buttonNumber
        }
    }
}
