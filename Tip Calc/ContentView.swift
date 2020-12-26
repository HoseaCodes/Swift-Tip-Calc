//
//  ContentView.swift
//  Tip Calc
//
//  Created by Dominique Hosea on 12/25/20.
//  Copyright © 2020 Dominique Hosea. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPercent: Double = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
                Text("Tip Amount: $ \(Double(total)! * tipPercent / 100, specifier: "%0.2f")")
            
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
