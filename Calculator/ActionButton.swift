import SwiftUI

struct ActionButton: View {
    var label: String;
    
    var body: some View {
        Button(action: setNumber) {
            Text(label)
        }
            .frame(width: 100, height: 60)
            .border(Color.black, width: 2)
            .font(.system(size: 26))
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(label: "")
    }
}
