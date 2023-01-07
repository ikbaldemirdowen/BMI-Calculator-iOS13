//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiGlobal : String = "0.0"
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
        heightLabel.text = String(format: "%.2f", "\(sender.value)m")
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider)
    {
        weightLabel.text = String(format: "%.0f", "\(sender.value)kg")
    }
    @IBAction func calculatePressed(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight / (pow(height, 2))
        bmiGlobal = String(format: "%.1f", BMI)
        
        //showing the second view
        self.performSegue(withIdentifier: "goToResult", sender: self    )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValuee = String(bmiGlobal)
        }
    }
}
