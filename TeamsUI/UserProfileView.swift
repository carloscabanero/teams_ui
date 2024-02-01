//
//  ContentView.swift
//  TeamsUI
//
//  Created by Carlos Cabanero on 1/26/24.
//

import SwiftUI

struct UserProfileView: View {
    @State var profile: UserProfileModel
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    UserProfileView(profile: DataPreview.eva)
}

//protocol UserProfileInteractions {
//    
//}
