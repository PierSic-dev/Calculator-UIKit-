//
//  ViewController.swift
//  Calculator (UIKit)
//
//  Created by Pierpaolo Siciliano on 24/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var firstNumber = 0.0
    var operation: Operation = .addition
    var secondNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        clearInput()
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        let buttonNumber = sender.titleLabel!.text!
        let currentNumber = resultLabel.text!
        
        // avoid the creation of a long string of zeros
        if currentNumber == "0" && buttonNumber != "0" {
            resultLabel.text! = buttonNumber
        } else if currentNumber != "0" {
            resultLabel.text! += buttonNumber
        }
    }
    
    @IBAction func operationButtonPressed(_ sender: UIButton) {
        firstNumber = Double(resultLabel.text!) ?? 0.0
        print("op started, 1st = \(firstNumber)")
        let buttonOperation = sender.titleLabel!.text!
        
        switch buttonOperation {
        case "+":
            operation = .addition
            clearInput()
        case "-":
            operation = .subtraction
            clearInput()
        case "×":
            operation = .multiplication
            clearInput()
        case "÷":
            operation = .division
            clearInput()
        case "=":
            secondNumber = Double(resultLabel.text!) ?? 0.0
            calculate()
        default:
            fatalError("Unknown operation")
        }
    }
    
    func calculate() {
        print("1st = \(firstNumber) | 2nd = \(secondNumber)")
        var result = 0.0
        switch operation {
        case .addition:
            result = firstNumber + secondNumber
        case .subtraction:
            result = firstNumber - secondNumber
        case .multiplication:
            result = firstNumber * secondNumber
        case .division:
            if secondNumber != 0 {
                result = firstNumber / secondNumber
            }
        }
        
        // check if there are any decimals
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            resultLabel.text! = String(Int(result))
        }
        print("new 1st = \(firstNumber)")
    }
    
    func clearInput() {
        resultLabel.text! = "0"
    }
    
    enum Operation {
        case addition
        case subtraction
        case multiplication
        case division
    }
}
