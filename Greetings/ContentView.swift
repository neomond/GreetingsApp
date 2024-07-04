//
//  ContentView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 04.07.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Hello!", color: .green)
            TextView(text: "Hello, there!", color: .yellow)
            TextView(text: "Welcome to Swift programming!", color: .red)
            TextView(text: "Good luck!", color: .purple)
            TextView(text: "Boom!", color: .gray)
            TextView(text: "Are you ready to explore?", color: .blue)
        }
    }
}

#Preview {
    ContentView()
}

struct TextView: View {
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(color.opacity(0.8))
            )
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
    }
}
