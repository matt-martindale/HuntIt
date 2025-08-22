//
//  Home.swift
//  HuntIt
//
//  Created by Matt Martindale on 8/21/25.
//

import SwiftUI
import FirebaseAuth

struct Home: View {
    @AppStorage("logged_in") private var loggedIn: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Logout") {
                    try? Auth.auth().signOut()
                    loggedIn = false
                }
                .navigationTitle("Home")
            }
        }
    }
}

#Preview {
    Home()
}
