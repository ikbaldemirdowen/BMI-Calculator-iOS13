//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Ikbal Demirdoven on 2023-01-03.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValuee : String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValuee
        adviceLabel.text = ":))"
    }
    

    @IBAction func recalculateButton(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    

}
