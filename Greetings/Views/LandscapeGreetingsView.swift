//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 16.07.24.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack() {
                TitleView()
                    .frame(height: 200)
                Spacer()
                MessagesView()
            }
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
