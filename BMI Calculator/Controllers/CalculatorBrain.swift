//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by asmaa gamal  on 01/05/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain{
    var bmi = 0
  
   mutating func calculateBMI(hight:Int ,weight:Int ){
       if hight != 0 {
           bmi = weight / (hight*hight)
       }
       print(bmi)
    }
    func getBMIValue()->Int{
        
        bmi
    }
}
