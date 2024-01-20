//
//  LoginView.swift
//  MessageApp
//
//  Created by 황성진 on 1/20/24.
//

import SwiftUI

struct LoginView: View {
    // MARK: - PROPERTY
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("로그인")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.bkText)
                    .padding(.top, 80)
                
                Text("아래 제공되는 서비스로 로그인을 해주세요.")
                    .font(.system(size: 14))
                    .foregroundStyle(.greyDeep)
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            Button {
                authViewModel.send(action: .googleLogin)
            } label: {
                Text("Goggle로 로그인")
            }.buttonStyle(LoginButtonStyle(textColor: .bktext, borderColor: .greylight))
            
            Button {
                // TODO: Apple Login
            } label: {
                Text("Apple로 로그인")
            }.buttonStyle(LoginButtonStyle(textColor: .bktext, borderColor: .greylight))
        } //: Vstack
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image("back")
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
