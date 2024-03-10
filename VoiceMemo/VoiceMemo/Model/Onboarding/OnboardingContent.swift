//
//  OnboardingContent.swift
//  VoiceMemo
//
//  Created by 황성진 on 3/11/24.
//

import Foundation

struct OnboardingContent: Hashable {
    var imageFileName: String
    var title: String
    var subTitle: String
    
    init(imageFileName: String, 
         title: String,
         subTitle: String) {
        self.imageFileName = imageFileName
        self.title = title
        self.subTitle = subTitle
    }
}
