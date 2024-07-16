//
//  TitleView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 16.07.24.
//

import SwiftUI

struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    var body: some View {
        HStack {
            GreetingsTextView(captionIndex: $captionIndex)
            
            Spacer()
            
            RotatableCircleView(isRotated: $isRotated)
        }
        .padding()
    }
}

struct VerticalTitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(captionIndex: $captionIndex)
                        
            RotatableCircleView(isRotated: $isRotated)
            
            Spacer()
        }
        .padding()
    }
}

struct RotatableCircleView: View {
    @Binding var isRotated: Bool
    
    var body: some View {
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
}


struct GreetingsTextView: View {
    @Binding var captionIndex: Int
    
    let caption: [LocalizedStringKey] = [
       LocalizedStringKey("Exploring iOS 16 programming"),
       LocalizedStringKey("Learning how to bake"),
       LocalizedStringKey("Programming recipes"),
       LocalizedStringKey("A quest for knowledge")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text( LocalizedStringKey("Greetings"))
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(caption[captionIndex])
                .font(.headline)
                .fontWeight(.thin)
        }
        .padding()
        .onTapGesture {
            captionIndex = Int.random(in: 0..<caption.count)
        }
    }
}



#Preview {
//    TitleView()
    VerticalTitleView()
}
