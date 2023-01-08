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
    var advice : String?
    var color : UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValuee
        adviceLabel.text = advice
        background.backgroundColor = color
    }
    

    @IBAction func recalculateButton(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    

}
