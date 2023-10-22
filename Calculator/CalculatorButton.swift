import SwiftUI

struct CalculatorButton: View {
    @Binding var calculationString: String;
    
    var number: Int;
    
    var body: some View {
        Button(action: {
            self.calculationString.append(String(self.number))
        }) {
            Text("\(number)")
        }
            .frame(width: 100, height: 60)
            .border(Color.black, width: 2)
            .font(.system(size: 26))
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(calculationString: .constant(""), number: 0)
    }
}
