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
            BackgroundView()
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
    @State var color: Color
    
    let colors: [Color] = [
        .red, .green, .blue, .orange,
        .yellow, .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0),
    ]
    
    
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
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}

struct TitleView: View {
    @State var isRotated: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Exploring iOS 15 programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .padding()
            Spacer()
            Circle()
                .strokeBorder( AngularGradient(gradient: Gradient(
                    colors: [
                        .pink, .purple,
                        .blue, .orange, .yellow]),
                                               center: .center,
                                               angle: .zero),
                               lineWidth: 15
                )
                .rotationEffect(isRotated ? .zero : .degrees(360))
                .frame(maxWidth: 70, maxHeight: 70)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
        }
        .padding()
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
        VStack(alignment: .leading) {
            ForEach(messages, content: { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            })
        }
        .padding()
        
        //            ForEach(0..<messages.count, content: { index in
        //                TextView(text: messages[index].text, color: messages[index].color)
        //            })
    }
}

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.blue,
                                Color(red: 139/255,
                                      green: 80/255,
                                      blue: 240/255)],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .opacity(0.3)
        .ignoresSafeArea()
    }
}
