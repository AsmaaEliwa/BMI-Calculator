//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by asmaa gamal  on 01/05/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var result:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
let resultLabel = UILabel()
        resultLabel.text = result ?? ""
        resultLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        view.addSubview(resultLabel)
        view.backgroundColor = .systemTeal
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
