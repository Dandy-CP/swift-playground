//
//  Chats.swift
//  swift playground
//
//  Created by Dandy Candra on 22/02/24.
//

import SwiftUI

struct HeaderComponents: View {
    @State private var searchValue: String = ""
    var body: some View {
        Section() {
            HStack {
                TextField("Search", text: $searchValue)
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.blue)
            }
        }
    }
}

struct Chats: View {
    var body: some View {
        NavigationView {
            Form {
                HeaderComponents()
                ChatPreviewBox()
            }
            .navigationTitle("Chats")
        }
    }
}

#Preview {
    Chats()
}
