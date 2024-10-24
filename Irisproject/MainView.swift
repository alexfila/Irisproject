//
//  ContentView.swift
//  Irisproject
//
//  Created by Alex Fila on 24/10/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 250, height: 400)
                            .foregroundStyle(Color.white)
                            .padding()

                            Text("Sending some \ninformation")
                            .multilineTextAlignment(.center)
                    }
                    NavigationLink(destination: SecondView()) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.yellow)
                        }
                    }
            }
        }
        
    }
}

#Preview {
    MainView()
}
