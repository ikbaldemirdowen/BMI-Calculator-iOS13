//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ikbal Demirdoven on 2023-01-07.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain
{
    var bmi : Float?
    
    func getBMI() -> String
    {
        let bmiTo1Decimal = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1Decimal
    }
    
    mutating func calculateBMI(height : Float, weight: Float)
    {
        bmi = weight / (height * height)
    }
}
