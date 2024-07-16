//
//  MessagesView.swift
//  Greetings
//
//  Created by Nazrin Atayeva on 16.07.24.
//

import SwiftUI

struct MessagesView: View {
    let messages = [
        DataItemModel(text:  LocalizedStringKey("Hello"), color: .green),
        DataItemModel(text:  LocalizedStringKey("Hello, there"), color: .yellow),
        DataItemModel(text:  LocalizedStringKey("Welcome to Swift programming"), color: .red),
        DataItemModel(text:  LocalizedStringKey("Good luck!"), color: .purple),
        DataItemModel(text:  LocalizedStringKey("Boom"), color: .gray),
        DataItemModel(text:  LocalizedStringKey("Are you ready to explore?"), color: .blue),
        DataItemModel(text:  LocalizedStringKey("You got this!!!"), color: .orange)
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(messages, content: { dataItem in
                    TextView(text: dataItem.text, color: dataItem.color)
                })
            }
            .padding()
            Spacer()
        }
        
        //            ForEach(0..<messages.count, content: { index in
        //                TextView(text: messages[index].text, color: messages[index].color)
        //            })
    }
}



#Preview {
    MessagesView()
}
