import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var calculationString: String = "";
    
    var body: some View {
        VStack {
            Spacer()
            Text("Kalkulator")
                .font(.system(size: 36))
            Spacer()
            TextField("", text: $calculationString)
                .frame(width: 315, height: 60)
                .border(Color.black, width: 2)
                .disableAutocorrection(true)
            
                .multilineTextAlignment(TextAlignment.center)
            HStack {
                CalculatorButton(calculationString: $calculationString, number: 1)
                CalculatorButton(calculationString: $calculationString, number: 2)
                CalculatorButton(calculationString: $calculationString, number: 3)
            }
            HStack {
                CalculatorButton(calculationString: $calculationString, number: 4)
                CalculatorButton(calculationString: $calculationString, number: 5)
                CalculatorButton(calculationString: $calculationString, number: 6)
            }
            HStack {
                CalculatorButton(calculationString: $calculationString, number: 7)
                CalculatorButton(calculationString: $calculationString, number: 8)
                CalculatorButton(calculationString: $calculationString, number: 9)
            }
            HStack {
                CalculatorButton(calculationString: $calculationString, number: 0)
                ActionButton(calculationString: $calculationString, label: "+")
                ActionButton(calculationString: $calculationString, label: "-")
            }
            HStack {
                ActionButton(calculationString: $calculationString, label: "*")
                ActionButton(calculationString: $calculationString, label: "/")
                ActionButton(calculationString: $calculationString, label: "sin")
            }
            
            Button(action: performCalculate) {
                Text("Oblicz")
            }
            .frame(width: 315, height: 60)
            .border(Color.black, width: 2)
            .font(.system(size: 26))
        }
    }
    
    func performCalculate() -> Void {
        self.calculationString = calculate(calculationString: self.calculationString)
    }
}
                       
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
