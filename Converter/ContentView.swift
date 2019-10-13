//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let lengthOptions = ["meters", "km", "feet", "yards", "miles"]
    @State private var inputSelected = 0
    @State private var outputSelected = 0
    @State private var inputValueString = ""

    private var outputValueString: String {
        return "123"
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("From", selection: $inputSelected) {
                        ForEach(0 ..< lengthOptions.count) {
                            Text("\(self.lengthOptions[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section {
                    TextField("Enter \(lengthOptions[inputSelected])", text: $inputValueString)
                }
                Section {
                    Picker("To", selection: $outputSelected) {
                        ForEach(0 ..< lengthOptions.count) {
                            Text("\(self.lengthOptions[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section {
                    Text("\(outputValueString)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
