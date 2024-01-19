//
//  MessageAppApp.swift
//  MessageApp
//
//  Created by 황성진 on 1/19/24.
//

import SwiftUI

@main
struct MessageAppApp: App {
    @StateObject var container: DIContainer = .init(services: Services())
    
    var body: some Scene {
        WindowGroup {
            AuthenticationView(authViewModel: .init())
                .environmentObject(container)
        }
    }
}
