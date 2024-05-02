//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider1Value: UILabel!
    
    @IBOutlet weak var slider2Value: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChangeValue(_ sender: UISlider) {
        if sender == slider1{
//            slider1Value.text =  String(format:"%.2f",sender.value)
            slider1Value.text =  "\(Int(sender.value)) m"
        }else{
//            slider2Value.text =  String(format:"%.2f",sender.value)
            slider2Value.text =  "\(Int(sender.value)) Kg"
        }
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        decode("messageFile")
        let hight = slider1.value
        let weight = slider2.value
        calculatorBrain.calculateBMI(hight:Int(hight) ,weight:Int(weight) )
//        performSegue(withIdentifier: "showResult", sender: self)
//        let secondVC = SecondViewController()
//        secondVC.result = String(bmi)
//        present(secondVC, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            let destinationVC = segue.destination as! CalculatedViewController
            
            destinationVC.resultValue = calculatorBrain.getBMIValue()
        }
    }
    
}

func decode(_ messageFile: String) -> String? {
    guard let filePath = Bundle.main.path(forResource: messageFile, ofType: "txt") else {
        print("File not found.")
        return nil
    }
    
    do {
        let content = try String(contentsOfFile: filePath)
        
        var words = [(Int, String)]()
        
        let lines = content.components(separatedBy: .newlines)
        for line in lines {
            let components = line.components(separatedBy: .whitespaces)
            if let number = Int(components.first ?? ""), let word = components.last {
                words.append((number, word))
            }
        }
        
        words.sort { $0.0 < $1.0 }
        
        let pyramid = generatePyramid(words: words)
        
        return pyramid
    } catch {
        print("Error reading file:", error)
        return nil
    }
}
func generatePyramid(words: [(Int, String)]) -> String {
    var pyramid = ""
    var currentIdx = 0
    let maxNumLength = String(words.last?.0 ?? 1).count

    for i in 1...words.count {
        let lineNumber = String(format: "%\(maxNumLength)d", i)
        var row = "\(lineNumber) "

        for _ in 0..<i {
            if currentIdx < words.count { // Add this condition to prevent index out of range
                row += words[currentIdx].1 + " "
                currentIdx += 1
            }
        }

        pyramid += row.trimmingCharacters(in: .whitespacesAndNewlines) + "\n"
    }

    return pyramid
}
