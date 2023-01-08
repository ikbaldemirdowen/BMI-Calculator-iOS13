//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSlider(_ sender: UISlider)
    {
        heightLabel.text = String(format : "%.1f", sender.value) + "m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider)
    {
        weightLabel.text = String(format : "%.0f", sender.value) + "kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        //showing the second view
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            // accept the destination below as ResultsViewController, not UIViewController, just like initiating an object
            let destinationVC = segue.destination as! ResultsViewController //this is forced downcasting
            destinationVC.bmiValuee = calculatorBrain.getBMI()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}
