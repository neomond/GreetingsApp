//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 16.07.24.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String

//  @Binding var layoutDirection: LayoutDirection
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(action: {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {
                    Text("English")
                })
                Button(action: {
                    language = "ru"
                    layoutDirectionString = RIGHT_TO_LEFT
                }, label: {
                    Text("Russian")
                })
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
