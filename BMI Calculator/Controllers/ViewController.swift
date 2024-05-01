//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider1Value: UILabel!
    
    @IBOutlet weak var slider2Value: UILabel!
    var bmi = 0
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
        let hight = slider1.value
        let weight = slider2.value
        bmi = Int(weight) / Int(hight*hight)
        print(bmi)
//        let secondVC = SecondViewController()
//        secondVC.result = String(bmi)
//        present(secondVC, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            let destinationVC = segue.destination as! CalculatedViewController
            destinationVC.resultValue = bmi
        }
    }
    
}

