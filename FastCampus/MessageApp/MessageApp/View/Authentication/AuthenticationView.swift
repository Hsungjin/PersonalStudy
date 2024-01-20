//
//  ContentView.swift
//  MessageApp
//
//  Created by 황성진 on 1/19/24.
//

import SwiftUI

struct AuthenticationView: View {
    // MARK: - PROPERTY
    @StateObject var authViewModel: AuthenticationViewModel
    
    // MARK: - BODY
    var body: some View {
        switch authViewModel.authenticationState {
        case .unauthenticated:
            // TODO: 로그인 뷰
            LoginIntroView()
                .environmentObject(authViewModel)
        case .authenticated:
            // TODO: 메인탭 뷰
            MainTabView()
        }
    }
}

#Preview {
    AuthenticationView(authViewModel: .init(container: .init(services: StubService())))
}
