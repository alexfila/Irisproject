//
//  ContentView.swift
//  Irisproject
//
//  Created by Alex Fila on 24/10/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text("text")
            HStack {
                Text("date picker")
                CategoryView()
            }
        }
        .padding()
    }
}

#Preview {
    SecondView()
}
