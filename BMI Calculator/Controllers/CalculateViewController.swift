//
//  ViewController.swift
//  BMI Calculator
//


import UIKit

class CalculateViewController: UIViewController {

    var calculatorLogic = CalculatorLogic()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = (String(format: "%.2f", sender.value)+"m")
       
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = (String(format: "%.0f", sender.value)+"Kg")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorLogic.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender:self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorLogic.getBMIValue()
            destinationVC.advice = calculatorLogic.getAdvice()
            destinationVC.color = calculatorLogic.getColor()
        }
    }
    
    
}

