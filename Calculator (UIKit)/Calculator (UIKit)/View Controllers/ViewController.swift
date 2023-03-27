//
//  ViewController.swift
//  Calculator (UIKit)
//
//  Created by Pierpaolo Siciliano on 24/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var firstNumber: Double?
    var operation: Operation?
    var secondNumber: Double?
    
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
    
    @IBAction func operationButtonPressed(_ sender: UIButton) {
        firstNumber = Double(resultLabel.text!)
        let buttonOperation = sender.titleLabel!.text!
        
        switch buttonOperation {
        case "+":
            operation = .addition
        case "-":
            operation = .subtraction
        case "×":
            operation = .multiplication
        case "÷":
            operation = .division
        case "=":
            operation = .equal
        default:
            operation = nil
        }
    }
    
    enum Operation {
        case addition
        case subtraction
        case multiplication
        case division
        case equal
    }
}
