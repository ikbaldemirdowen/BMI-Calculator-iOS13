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
    var bmi : BMI?
    func getBMI() -> String
    {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    
    mutating func calculateBMI(height : Float, weight: Float)
    {
        let bmiValue = weight / (height * height)
        
        switch bmiValue
        {
        case 1...18.4:
            bmi = BMI(value: bmiValue, advice: "Eat more pies :)", color: UIColor.init(red: 0, green: 247, blue: 255, alpha: 0.5))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle :)", color: UIColor.init(red: 0, green: 255, blue: 110, alpha: 0.5))
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pies :(", color: UIColor.init(red: 255, green: 0, blue: 0, alpha: 0.5))
        }
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? UIColor.black
    }
    
    func getAdvice() -> String
    {
        return bmi?.advice ?? "Unknown advice"
    }
    
}
