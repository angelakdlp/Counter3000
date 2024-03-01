//
//  ContentView.swift
//
//  Created by Angela Keith Panaligan on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    // State variable to hold the counter value
    @State var counter = 0
    
    var body: some View {
        VStack {
            // Create the text above the counter
            Text("Click buttons below to change the counter")
                .padding()
            
            // Create text to display the current counter value
            Text("\(counter)")
                .font(.title)
                .padding()
            
            // HStack containing the decrement and increment buttons
            HStack {
                Button(action: {
                    // Call decrement function when the decrement button is pressed
                    decrement()
                }) {
                    // Label for the decrement button
                    Text("Decrement")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Call increment function when the increment button is pressed
                    increment()
                }) {
                    // Label for the increment button
                    Text("Increment")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
    
    // Function to decrement the counter value
    func decrement() {
        if counter > 0 {
            counter -= 1
        }
    }
    
    // Function to increment the counter value
    func increment() {
        if counter < 50 {
            counter += 1
        }
    }
}

// Preview of ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
