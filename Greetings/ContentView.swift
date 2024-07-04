//
//  ContentView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 04.07.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Greetings")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundStyle(Color.purple)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.orange.opacity(0.4))
            )
            .shadow(color: Color.orange.opacity(0.4), radius: 5, x: 10, y: 10)
    }
}

#Preview {
    ContentView()
}
