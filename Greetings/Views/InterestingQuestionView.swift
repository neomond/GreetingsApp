//
//  InterestingQuestionView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 17.07.24.
//

import SwiftUI

struct InterestingQuestionView: View {
    
    let listOfColors1 = [Color.red, Color.green, Color.blue]
    let listOfColors2: [Color] = [.cyan, .blue, .mint]
    
    @State var shapeColor = Color.black
    
    func randomColors(colors: [Color]) -> Color {
        return colors.randomElement() ?? .black
    }
    
    var body: some View {
        Text("Interesting Question")
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.red)
            .background(
                ZStack {
                    Color.blue
                    
                    HStack {
                        Circle()
                            .fill(shapeColor)
                        Rectangle()
                            .fill(shapeColor)
                    }
                    
                }
            )
            .onTapGesture {
                withAnimation {
                    shapeColor = randomColors(colors: listOfColors2)
                }
            }
    }
}

#Preview {
    InterestingQuestionView()
}
