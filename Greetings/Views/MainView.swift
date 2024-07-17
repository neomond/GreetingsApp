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
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portrait mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            // Portrait mode
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
            
        } else {
            // Landscape mode
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
            
        }
        
    }
}

#Preview {
    MainView(language: .constant("en"),
             layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
