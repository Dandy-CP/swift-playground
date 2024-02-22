//
//  Settings.swift
//  swift playground
//
//  Created by Dandy Candra on 22/02/24.
//

import SwiftUI

struct SettingStack: View {
    var body: some View {
        NavigationView {
            Form {
                Section() {
                    NavigationLink(destination: ScreenNavigationView()) {
                        HStack(spacing: 20) {
                            Image("me")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            VStack(alignment: .leading) {
                                Text("Dummy").font(.headline)
                                Text("Belajar Swift").font(.caption)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                    NavigationLink(destination: ScreenNavigationView()) {
                        HStack(spacing: 20) {
                            Image(systemName: "heart.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("Avatar")
                        }
                        .padding(.bottom, 2)
                    }
                }
                
                Section(header: Text("Pengaturan Umum")) {
                    NavigationLink(destination: ScreenNavigationView()) {
                        HStack(spacing: 10) {
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("Pesan Berbintang")
                        }
                        .padding(.top, 2)
                    }
                    
                    NavigationLink(destination: ScreenNavigationView()) {
                        HStack(spacing: 10) {
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("WhatsApp Web/Desktop")
                        }
                        .padding(.bottom, 2)
                    }
                }
                
                Section(header: Text("Pengaturan Akun")) {
                    NavigationLink(destination: ScreenNavigationView()) {
                        HStack(spacing: 10) {
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("Akun")
                        }
                        .padding(.top, 2)
                    }
                    
                    NavigationLink(destination: ScreenNavigationView()) {
                        HStack(spacing: 10) {
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("Chat")
                        }
                        .padding(.bottom, 2)
                    }
                    
                    NavigationLink(destination: Homescreen().navigationBarBackButtonHidden(true)) {
                        HStack(spacing: 10) {
                            Image(systemName: "square.and.arrow.up.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.red)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("Back to main menu")
                        }
                        .padding(.bottom, 2)
                    }
                }
            }.navigationTitle("Settings")
        }
    }
}

struct ScreenNavigationView: View {
    var body: some View {
        Text("Setting Navigation View")
    }
}

struct Settings: View {
    var body: some View {
        SettingStack()
    }
}

#Preview {
    Settings()
}
