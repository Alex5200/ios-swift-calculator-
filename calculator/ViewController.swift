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
    
    @IBAction func InputNumber(_ sender: UIButton) {
        switch numberOne {
        case "1":
            numberOne += "1";
        case "2":
            numberOne += "2";
        case "3":
            numberOne += "3";
        case "4":
            numberOne += "4";
        case "5":
            numberOne += "5";
        case "6":
            numberOne += "6";
        case "7":
            numberOne += "7";
        case "8":
            numberOne += "8";
        case "9":
            numberOne += "9";
        case "0":
            numberOne += "0";
        default:
            print("err")
        }
        if operand.isEmpty{
            labelValue.text = numberOne + (sender.titleLabel?.text)!
            labelValue.text = numberOne
        }else {
            labelValue.text = numberTwo + (sender.titleLabel?.text)!
            labelValue.text = numberTwo

        }
    }
    @IBAction func Operand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    @IBAction func buttonaction(_ sender: UIButton) {
        operand = ""
        numberTwo = ""
        numberOne = ""
        labelValue.text = "0"
       
    }
    @IBAction func InputValue(_ sender: UIButton) {
       
        if operand.isEmpty{
            labelValue.text = numberOne + (sender.titleLabel?.text)!
            labelValue.text = numberOne
        }else {
            labelValue.text = numberTwo + (sender.titleLabel?.text)!
            labelValue.text = numberTwo

        }    }
    @IBAction func result(_ sender: UIButton) {
        var resultData = 0.0
        
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
        if resultData.truncatingRemainder(dividingBy: 1.0) == 0.0{
            labelValue.text = String(Int(resultData))
        }
        else {
            labelValue.text = String(resultData)

        }
        
    }}


