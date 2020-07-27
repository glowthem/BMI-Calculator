import UIKit

struct CalculatorBrain {
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmi < 24.9 {
            bmiValue = BMI(value: bmi, advice: "fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else {
            bmiValue = BMI(value: bmi, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice!"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
