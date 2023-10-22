import Foundation

func calculate(calculationString: String) -> String {
    var newCalculationString: String = ""
    
    if calculationString == "ERR" {
        return "";
    }
    
    let components = calculationString.components(separatedBy: CharacterSet.decimalDigits.inverted);
    
    guard components.count == 2, let a = Int(components[0]), let b = Int(components[1]) else {
        return "ERR";
    }
    
    switch calculationString.filter({ !CharacterSet.decimalDigits.contains($0.unicodeScalars.first!) }) {
        
    case "+":
        newCalculationString = String(Calculations.add(a: a, b: b))
    case "-":
        newCalculationString = String(Calculations.substract(a: a, b: b))
    case "*":
        newCalculationString = String(Calculations.multiply(a: a, b: b))
    case "/":
        if let divRes = Calculations.divide(a: a, b: b) {
            newCalculationString = String(divRes)
        } else {
            newCalculationString = "ERR"
        }
        
        newCalculationString = String(Calculations.add(a: a, b: b))
    case "sin":
        newCalculationString = String(Calculations.sin(value: a))
    default:
        return "ERR"
        
    }
    
    return newCalculationString;
}
