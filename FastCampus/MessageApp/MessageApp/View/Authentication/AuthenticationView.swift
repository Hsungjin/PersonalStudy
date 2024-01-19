//
//  ContentView.swift
//  MessageApp
//
//  Created by 황성진 on 1/19/24.
//

import SwiftUI

struct AuthenticationView: View {
    // MARK: - PROPERTY
    @StateObject var authViewModel = AuthenticationViewModel()
    
    // MARK: - BODY
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
    AuthenticationView(authViewModel: .init())
}
