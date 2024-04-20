//
//  CustomNavigationBar.swift
//  VoiceMemo
//
//  Created by 황성진 on 3/12/24.
//

import SwiftUI

struct CustomNavigationBar: View {
    // MARK: - PROPERTY
    let isDisplayLeftBtn: Bool
    let isDisplayRightBtn: Bool
    let leftBtnAction: () -> Void
    let rightBtnAction: () -> Void
    let rightBtnType: NavigationBarType
    
    init(isDisplayLeftBtn: Bool = false,
         isDisplayRightBtn: Bool = false,
         leftBtnAction: @escaping () -> Void = {},
         rightBtnAction: @escaping () -> Void = {},
         rightBtnType: NavigationBarType = .close) {
        self.isDisplayLeftBtn = isDisplayLeftBtn
        self.isDisplayRightBtn = isDisplayRightBtn
        self.leftBtnAction = leftBtnAction
        self.rightBtnAction = rightBtnAction
        self.rightBtnType = rightBtnType
    }
    
    // MARK: - BODY
    var body: some View {
        HStack {
            if isDisplayLeftBtn {
                Button {
                    leftBtnAction()
                } label: {
                    Image("leftArrow")
                }
            }
            
            Spacer()
            
            if isDisplayRightBtn {
                Button {
                    rightBtnAction()
                } label: {
                    if rightBtnType == .close {
                        Image("close")
                    } else {
                        Text(rightBtnType.rawValue)
                            .foregroundStyle(Color.customBlacks)
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .frame(height: 20)
    }
}

#Preview {
    CustomNavigationBar()
}
