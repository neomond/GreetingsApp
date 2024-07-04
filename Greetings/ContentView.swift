//
//  ContentView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 04.07.24.
//

import SwiftUI

struct DataItemModel {
    let text: String
    let color: Color
}

struct ContentView: View {
    
    let messages = [
        DataItemModel(text: "Hello", color: .green),
        DataItemModel(text: "Hello, there", color: .yellow),
        DataItemModel(text: "Welcome to Swift programming", color: .red),
        DataItemModel(text: "Good luck!", color: .purple),
        DataItemModel(text: "Boom", color: .gray),
        DataItemModel(text: "Are you ready to explore?", color: .blue)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: messages[0].text, color: messages[0].color)
            TextView(text: messages[1].text, color: messages[1].color)
            TextView(text: messages[2].text, color: messages[2].color)
            TextView(text: messages[3].text, color: messages[3].color)
            TextView(text: messages[4].text, color: messages[4].color)
            TextView(text: messages[5].text, color: messages[5].color)
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
