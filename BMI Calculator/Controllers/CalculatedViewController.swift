//
//  CalculatedViewController.swift
//  BMI Calculator
//
//  Created by asmaa gamal  on 01/05/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class CalculatedViewController: UIViewController {
    var resultValue:Int?
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = String(resultValue ?? 0)
        
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
 

}
