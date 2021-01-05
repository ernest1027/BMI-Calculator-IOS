//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Ernest Wong on 2020-12-27.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var bmivalue = "9.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = "hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
