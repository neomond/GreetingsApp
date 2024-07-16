//
//  MainView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 16.07.24.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        // Portrait mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            // Portrait mode
            GreetingsView()
        } else {
            // Landscape mode
            LandscapeGreetingsView()
        }
       
    }
}

#Preview {
    MainView()
}
