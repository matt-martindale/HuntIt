//
//  ContentView.swift
//  HuntIt
//
//  Created by Matt Martindale on 8/21/25.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @AppStorage("logged_in") private var loggedIn: Bool = false
    
    var body: some View {
        VStack {
            if loggedIn {
                Home()
            } else {
                LoginView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
