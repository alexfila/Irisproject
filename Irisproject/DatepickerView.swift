import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()   // State to hold the selected date
    
    var body: some View {
        VStack(spacing: 20) {
            // DatePicker with wheel style
            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(WheelDatePickerStyle())  // Set the DatePicker to wheel style
                .labelsHidden()  // Hides the default label to only show the wheel picker
                .padding()

            // Display the selected date
            Text("Selected Date: \(formattedDate(selectedDate))")
                .font(.headline)
                .padding()

        }
        .padding()
    }
    
    // Helper function to format the date
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
