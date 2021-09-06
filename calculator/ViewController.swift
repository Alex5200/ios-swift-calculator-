//
//  ViewController.swift
//  calculator
//
//  Created by Александр Ляхов on 06.09.2021.
//

import UIKit

class ViewController: UIViewController {
    var operand = "";
    var numberOne = "";
    var numberTwo = "";
    
    @IBOutlet weak var labelValue: UILabel!
    
   
    @IBAction func button1(_ sender: UIButton) {
        if operand.isEmpty{
            labelValue.text = numberOne + (sender.titleLabel?.text)!
            labelValue.text = numberOne
        }else {
            labelValue.text = numberTwo + (sender.titleLabel?.text)!
            labelValue.text = numberTwo        }
    }
    
    @IBAction func buttonaction(_ sender: UIButton) {
        operand = ""
        numberTwo = ""
        numberOne = ""
        labelValue.text = "0"
       
    }
    @IBAction func result(_ sender: UIButton) {
        var resultData: Double = 0.0
        
        switch operand {
        case "+":
            resultData = Double(numberOne)! + Double(numberTwo)!
        case "-":
            resultData = Double(numberOne)! - Double(numberTwo)!
        case "*":
            resultData = Double(numberOne)! * Double(numberTwo)!
        case "/":
            resultData = Double(numberOne)! / Double(numberTwo)!
        default:
            print("non")
        }
    }
}


