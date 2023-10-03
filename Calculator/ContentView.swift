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
                CalculatorButton(number: 1)
                CalculatorButton(number: 2)
                CalculatorButton(number: 3)
            }
            HStack {
                CalculatorButton(number: 4)
                CalculatorButton(number: 5)
                CalculatorButton(number: 6)
            }
            HStack {
                CalculatorButton(number: 7)
                CalculatorButton(number: 8)
                CalculatorButton(number: 9)
            }
            HStack {
                CalculatorButton(number: 0)
                ActionButton(label: "+")
                ActionButton(label: "-")
            }
            HStack {
                ActionButton(label: "*")
                ActionButton(label: "/")
                ActionButton(label: "SIN")
            }
            
            Button(action: setNumber) {
                Text("Oblicz")
            }
            .frame(width: 315, height: 60)
            .border(Color.black, width: 2)
            .font(.system(size: 26))
        }
    }
}

func setNumber() -> Void {
                                       
}
                       
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
