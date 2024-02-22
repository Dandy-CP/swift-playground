//
//  Homescreen.swift
//  swift playground
//
//  Created by Dandy Candra on 22/02/24.
//

import SwiftUI

struct Homescreen: View {
    var body: some View {
        NavigationView {
            Form {
                Section(){
                    NavigationLink(destination: WhatsAppHome().navigationBarBackButtonHidden(true)) {
                        HStack(spacing: 10) {
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("WhatsApp View")
                        }
                        .padding(1)
                    }
                }
            }.navigationTitle("Playground")
        }
    }
}

#Preview {
    Homescreen()
}
