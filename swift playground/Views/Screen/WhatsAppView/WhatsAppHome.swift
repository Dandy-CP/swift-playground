//
//  WhatsAppHome.swift
//  swift playground
//
//  Created by Dandy Candra on 22/02/24.
//

import SwiftUI

struct WhatsAppHome: View {
    var body: some View {
        TabView {
            Chats().tabItem {
                Image(systemName: "house")
                Text("Chats")
            }.tag(0)
            
            SettingStack().tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }.tag(1)
        }
    }
}

#Preview {
    WhatsAppHome()
}
