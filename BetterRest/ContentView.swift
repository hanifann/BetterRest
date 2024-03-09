//
//  ContentView.swift
//  BetterRest
//
//  Created by hanifan nurul haq on 09/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours" ,value: $sleepAmount, in: 4...12, step: 0.15)
            
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
                .labelsHidden()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
