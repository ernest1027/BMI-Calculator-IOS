//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Ernest Wong on 2020-12-27.

import UIKit
struct CalculatorLogic{

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let bmiValue = weight/(height*height)
        let advice: String
        let color: UIColor
        if(bmiValue < 18.5)
        {
            advice = "Eat more pies"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }
        else if(bmiValue < 24.9){
            advice = "You're fit"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
        else{
            advice = "Eat less pies"
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0 )
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "You're fit"
    }
    
    func  getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    }
}
