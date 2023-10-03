import SwiftUI

struct CalculatorButton: View {
    var number: Int;
    
    var body: some View {
        Button(action: setNumber) {
            Text("\(number)")
        }
            .frame(width: 100, height: 60)
            .border(Color.black, width: 2)
            .font(.system(size: 26))
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(number: 0)
    }
}
