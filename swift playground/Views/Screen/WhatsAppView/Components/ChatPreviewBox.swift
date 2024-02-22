//
//  ChatPreviewBox.swift
//  swift playground
//
//  Created by Dandy Candra on 22/02/24.
//

import SwiftUI

struct ListChats: Identifiable {
    let id = UUID()
    let name: String
    let lastMessage: String
}

struct ChatPreviewBox:View {
    let listInChats = [
        ListChats(name: "John", lastMessage: "Dummy Message"),
        ListChats(name: "Alice", lastMessage: "Dummy Message"),
        ListChats(name: "Bob", lastMessage: "Dummy Message"),
        ListChats(name: "Foo", lastMessage: "Dummy Message"),
        ListChats(name: "Foo", lastMessage: "Dummy Message"),
        ListChats(name: "Bar", lastMessage: "Dummy Message"),
        ListChats(name: "Foo", lastMessage: "Dummy Message"),
        ListChats(name: "Bar", lastMessage: "Dummy Message"),
        ListChats(name: "Foo", lastMessage: "Dummy Message"),
        ListChats(name: "Bar", lastMessage: "Dummy Message")
    ]
    
    var body: some View {
        List(listInChats) { chats in
            HStack(spacing: 15) {
                Image("me")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    HStack() {
                        Text(chats.name)
                        Spacer()
                        Text("10:00").font(.caption)
                    }
                    
                    Text(chats.lastMessage).font(.caption)
                }
                
            }
        }
    }
}

#Preview {
    ChatPreviewBox()
}
