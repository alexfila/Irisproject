//
//  CategoryView.swift
//  Irisproject
//
//  Created by Alex Fila on 24/10/24.
//

import SwiftUI

struct CategoryView: View {
    @State private var selectedOption = "Option 1"  // Default selected option
    @State private var showPicker = false           // Control when to show the picker
    
    // Sample options for the picker
    let options = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    var body: some View {
        VStack(spacing: 20) {
            // Button to show the picker
            Button(action: {
                showPicker.toggle()  // Toggle picker visibility
            }) {
                Text("Select an Option")
                    .font(.title2)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            // Display the selected option
            Text("Selected Option: \(selectedOption)")
                .font(.headline)
                .padding()

            // Show the picker in a wheel style when button is pressed
            if showPicker {
                Picker("Select an Option", selection: $selectedOption) {
                    ForEach(options, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(WheelPickerStyle())  // Set the picker style to wheel
                .labelsHidden()  // Hide the label for a cleaner look
                .frame(height: 150)  // Set a frame to control picker height
                .padding()
            }
        }
        .padding()
    }
}

#Preview { CategoryView() }
