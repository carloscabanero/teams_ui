//
//  TeamsUIApp.swift
//  TeamsUI
//
//  Created by Carlos Cabanero on 1/26/24.
//

import SwiftUI

@main
struct TeamsUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var isModalPresented = false

    var body: some View {
        VStack {
            Button("Teams") {
                isModalPresented.toggle()
            }
            .sheet(isPresented: $isModalPresented) {
                ModalNavigationView(isModalPresented: $isModalPresented)
            }
        }
        .padding()
    }
}

struct ModalNavigationView: View {
    @Binding var isModalPresented: Bool

    var body: some View {
        NavigationStack {
            UserProfileView(profile: DataPreview.eva)
            .navigationBarTitle("User Profile", displayMode: .inline)
        }
        .padding()
    }
}
