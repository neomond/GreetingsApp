//
//  ContentView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 04.07.24.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}

struct ContentView: View {
 
    var body: some View {
        ZStack {
            Color.black.opacity(0.2)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
         
                Spacer()
                Spacer()

            }
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

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Exploring iOS 15 programming")
                .font(.headline)
                .fontWeight(.thin)
        }
        .padding(.vertical)
    }
}

struct MessagesView: View {
    let messages = [
        DataItemModel(text: "Hello", color: .green),
        DataItemModel(text: "Hello, there", color: .yellow),
        DataItemModel(text: "Welcome to Swift programming", color: .red),
        DataItemModel(text: "Good luck!", color: .purple),
        DataItemModel(text: "Boom", color: .gray),
        DataItemModel(text: "Are you ready to explore?", color: .blue),
        DataItemModel(text: "You got this!!!", color: .orange)
    ]
    
    var body: some View {
        ForEach(messages, content: { dataItem in
            TextView(text: dataItem.text, color: dataItem.color)
        })
        
        //            ForEach(0..<messages.count, content: { index in
        //                TextView(text: messages[index].text, color: messages[index].color)
        //            })
    }
}
