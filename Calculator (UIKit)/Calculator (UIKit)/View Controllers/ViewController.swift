//
//  ViewController.swift
//  Calculator (UIKit)
//
//  Created by Pierpaolo Siciliano on 24/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
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
        let currentNumber = label.text!
        
        // avoid the creation of a long string of zeros
        if currentNumber == "0" && buttonNumber != "0" {
            label.text! = buttonNumber
        } else if currentNumber != "0" {
            label.text! += buttonNumber
        }
    }
    
    @IBAction func operationButtonPressed(_ sender: UIButton) {
        // TODO: calculate and display the result when concatenating operations (ex 3+3+3=9)
        let buttonOperation = sender.titleLabel!.text!
        
        switch buttonOperation {
        case "+":
            firstNumber = Double(label.text!) ?? 0.0
            operation = .addition
            clearInput()
        case "-":
            firstNumber = Double(label.text!) ?? 0.0
            operation = .subtraction
            clearInput()
        case "×":
            firstNumber = Double(label.text!) ?? 0.0
            operation = .multiplication
            clearInput()
        case "÷":
            firstNumber = Double(label.text!) ?? 0.0
            operation = .division
            clearInput()
        case "=":
            secondNumber = Double(label.text!) ?? 0.0
            calculate()
        default:
            fatalError("Unknown operation")
        }
    }
    
    @IBAction func dotButtonPressed(_ sender: UIButton) {
        if !(label.text!.contains(".")) {
            label.text! += "."
        }
    }
    
    @IBAction func signButtonPressed(_ sender: UIButton) {
        if label.text!.contains(".") {
            var currentNumber = Double(label.text!)!
            currentNumber *= -1
            label.text! = String(currentNumber)
        } else {
            var currentNumber = Int(label.text!)!
            currentNumber *= -1
            label.text! = String(currentNumber)
        }
    }
    
    func calculate() {
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
            label.text! = String(Int(result))
        } else {
            label.text! = String(result)
        }
    }
    
    func clearInput() {
        label.text! = "0"
    }
    
    enum Operation {
        case addition
        case subtraction
        case multiplication
        case division
    }
}
