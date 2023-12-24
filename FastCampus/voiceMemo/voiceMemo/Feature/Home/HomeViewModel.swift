//
//  HomeViewModel.swift
//  voiceMemo
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var memosCount: Int
    
    init(
        memosCount: Int = 0
    ) {
        self.memosCount = memosCount
    }
}

extension HomeViewModel {
  
  func setMemosCount(_ count: Int) {
    memosCount = count
  }
}

