//
//  ContentView.swift
//  BetterRest
//
//  Created by hanifan nurul haq on 09/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var coffeAmount = 1
    
    @State private var wakeUp = Date.now
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted())", value: $sleepAmount, in: 4...12)
                
                Text("Daily coffe intake")
                    .font(.headline)
                Stepper("\(coffeAmount) cup(s)", value: $coffeAmount, in: 1...20)
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedTime)
            }
        }
    }
}

func calculateBedTime() {
    
}

#Preview {
    ContentView()
}
