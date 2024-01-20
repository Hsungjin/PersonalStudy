//
//  MessageAppApp.swift
//  MessageApp
//
//  Created by 황성진 on 1/19/24.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct MessageAppApp: App {
    @StateObject var container: DIContainer = .init(services: Services())
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            AuthenticationView(authViewModel: .init(container: container))
                .environmentObject(container)
        }
    }
}
