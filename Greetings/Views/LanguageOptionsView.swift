//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 16.07.24.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirection: LayoutDirection
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(action: {
                    language = "en"
                    layoutDirection = .leftToRight
                }, label: {
                    Text("English")
                })
                Button(action: {
                    language = "ru"
                    layoutDirection = .rightToLeft
                }, label: {
                    Text("Russian")
                })
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirection: .constant(.leftToRight))
}
