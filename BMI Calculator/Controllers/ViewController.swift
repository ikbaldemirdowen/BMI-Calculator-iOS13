//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var heightt : Int = 0
    var weightt : Int = 0
    
    @IBAction func heightSlider(_ sender: UISlider)
    {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider)
    {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight / (height * height)
        print(BMI)
    }
}
