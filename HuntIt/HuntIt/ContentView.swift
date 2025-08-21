//
//  ContentView.swift
//  HuntIt
//
//  Created by Matt Martindale on 8/21/25.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    var authenticationViewModel: AuthenticationViewModel?
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            SignInWithAppleButton { request in
                authenticationViewModel?.handleSignInWithAppleRequest(request)
            } onCompletion: { result in
                authenticationViewModel?.handleSignInWithAppleCompletion(result)
            }
            .frame(maxWidth: .infinity, maxHeight: 50)

        }
        .padding()
    }
}

#Preview {
    ContentView(authenticationViewModel: nil)
}
