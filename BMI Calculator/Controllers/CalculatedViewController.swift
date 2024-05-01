//
//  CalculatedViewController.swift
//  BMI Calculator
//
//  Created by asmaa gamal  on 01/05/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class CalculatedViewController: UIViewController {
    @IBOutlet weak var advice: UILabel!
    var resultValue:Int?
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = String(resultValue ?? 0)
        if let value = resultValue{
            if value > 100 {
                view.backgroundColor = .systemPink
                advice.text = "You need to lose weigh"
                
            }else{
                view.backgroundColor = .green
                

            }
        }
        
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
 

}
